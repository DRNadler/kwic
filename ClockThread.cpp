// DRN: Unused in current Testdc Demo application

#include "ClockThread.h"

/*DRN*/#include "wx/wx.h"
/*DRN*/#include "TestdcApp.h"
/*DRN: restore this include which was commented out*/ //#include "TestdcFrm.h"


CClockThread::CClockThread() : wxThread( wxTHREAD_DETACHED )
{
	Create();
	SetPriority( 0 );
}

CClockThread::~CClockThread()
{

}

/*DRN*/#include <wx/app.h>
/*DRN*/class TestdcApp; wxDECLARE_APP(TestdcApp);
void *CClockThread::Entry( void )
{
	while( ! TestDestroy() )
	{
		wxGetApp().UpdateClock();
	}

	return NULL;
}
