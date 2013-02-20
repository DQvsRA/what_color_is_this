package com.nicotroia.whatcoloristhis.view.buttons
{
	import com.nicotroia.whatcoloristhis.controller.events.NavigationEvent;
	import com.nicotroia.whatcoloristhis.model.SequenceModel;
	
	import flash.events.MouseEvent;

	public class TestPageButtonMediator extends ButtonBaseMediator
	{
		[Inject]
		public var testPageButton:TestPageButton;
		
		override public function onRegister():void
		{
			super.onRegister();
			
			eventMap.mapListener(testPageButton, MouseEvent.CLICK, testPageButtonClickHandler);
		}
		
		private function testPageButtonClickHandler(event:MouseEvent):void
		{
			eventDispatcher.dispatchEvent(new NavigationEvent(NavigationEvent.NAVIGATE_TO_PAGE, SequenceModel.PAGE_Test));
		}
	}
}