import { Controller, Get} from '@nestjs/common';
import { DashboardService } from './dashboard.service';
import { Param } from '@nestjs/common';

@Controller('dashboard')
export class DashboardController {
  constructor(private readonly dashboardService: DashboardService) {}

  
  @Get()
  findAll() {
    return this.dashboardService.findAll();
  }

  @Get('details/:type/:userId')
  findDetails(
    @Param('type') type: 'author' | 'reviewer',
    @Param('userId') userId: string,
  ) {
    return this.dashboardService.findDetails(type, Number(userId));
  }

}
