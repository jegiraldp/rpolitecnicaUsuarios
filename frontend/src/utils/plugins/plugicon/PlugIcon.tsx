import { useMemo } from "react";
import type { CSSProperties, HTMLAttributes } from "react";
import { getIconMarkup, type IconName } from "@/assets/icons";
import "./plugicon.css";

export interface PlugIconProps extends Omit<HTMLAttributes<HTMLElement>, "color"> {
  name?: IconName;
  color?: string;
  size?: string | number;
  original?: boolean;
}

const applyColorOverrides = (svgMarkup: string, color: string): string => {
  if (typeof window === "undefined" || typeof document === "undefined") {
    return svgMarkup;
  }
  const wrapper = document.createElement("div");
  wrapper.innerHTML = svgMarkup.trim();
  const nodes = wrapper.querySelectorAll("*");
  const colorToUse = color || "currentColor";

  nodes.forEach((node) => {
    const hasFill = node.hasAttribute("fill") && node.getAttribute("fill") !== "none";
    const isVarFill =
      node.hasAttribute("fill") && (node.getAttribute("fill") ?? "").includes("var(");

    if (hasFill && !isVarFill) {
      node.setAttribute("fill", colorToUse);
    }
    if (node.tagName === "path" && !node.hasAttribute("fill")) {
      node.setAttribute("fill", colorToUse);
    }
    if (node.hasAttribute("stroke")) {
      node.setAttribute("stroke", colorToUse);
    }
  });

  return wrapper.innerHTML;
};

const formatSize = (size?: string | number): string | undefined => {
  if (size === undefined) return undefined;
  if (typeof size === "number") return `${size}px`;
  return size;
};

export const PlugIcon = ({
  name,
  color = "currentColor",
  size,
  original = false,
  className = "",
  style,
  ...rest
}: PlugIconProps) => {
  const markup = useMemo(() => {
    if (!name) return "";
    const iconMarkup = getIconMarkup(name);
    if (!iconMarkup) return "";
    return applyColorOverrides(iconMarkup, color);
  }, [name, color]);

  if (!name || !markup) {
    return null;
  }

  let mergedStyle: CSSProperties | undefined = style ? { ...style } : undefined;
  if (size !== undefined) {
    mergedStyle = mergedStyle ? { ...mergedStyle } : {};
    mergedStyle.fontSize = formatSize(size);
  }

  const classes = ["iconic", original ? "original" : "", className]
    .filter(Boolean)
    .join(" ")
    .trim();

  return (
    <i
      {...rest}
      aria-hidden
      className={classes || undefined}
      style={mergedStyle}
      dangerouslySetInnerHTML={{ __html: markup }}
    />
  );
};

export default PlugIcon;
