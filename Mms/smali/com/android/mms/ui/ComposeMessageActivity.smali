.class public Lcom/android/mms/ui/ComposeMessageActivity;
.super Lcom/android/mms/MmsBaseActivity;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mms/MmsApp$OnSipStatuChangeCallback;
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
.implements Lcom/android/mms/quickreply/QuickReplyView$OnQuickReplyItemClickCallback;
.implements Lcom/android/mms/transaction/sns/SnsHelper$AccountChangeObserver;
.implements Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMessageActivity$VCardEntryhandlerImpl;,
        Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$CustomeSelectedSlotIdChangedListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$MyOnPreDrawListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$SendMmsRunnable;,
        Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;,
        Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;,
        Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;,
        Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$RemoveIgnoreInvalidRecipientListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static final ASSOCIATION_ID:[Ljava/lang/String;

.field private static REQUEST_REFRESH_VCARD_DATA:I

.field private static final mImageUri:Ljava/lang/String;

.field private static final mVideoUri:Ljava/lang/String;

.field private static sEmptyContactList:Lcom/android/mms/data/ContactList;


# instance fields
.field protected DISABLE_SEND_BTN_WHEN_NO_SIM_CARD:Z

.field private actionFrm:Landroid/view/View;

.field private alertDialog:Landroid/app/AlertDialog;

.field private cmaCotent:Landroid/view/ViewGroup;

.field private cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

.field private editSpace:Landroid/view/View;

.field private focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private isAutoChangeScreen:Z

.field isFlyMeOpen:Z

.field private isNeedNotifyContactHeaderWidget:Z

.field private isNeedSelectAll:Z

.field public isPrepareForwardPduOk:Z

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

.field private mAttachmentAdd:Landroid/view/MenuItem;

.field private final mAttachmentEditorHandler:Landroid/os/Handler;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

.field private mBindImsi:Ljava/lang/String;

.field private mBindImsiContentObserver:Landroid/database/ContentObserver;

.field private mBottomDivider:Landroid/view/View;

.field private mBottomPanelCurrentMode:I

.field private mChangeSlotMenu:Landroid/view/MenuItem;

.field private mChangeSlotMenuHelper:Lcom/android/mms/view/ChangeSlotViewHelper;

.field private mChooseQuickPhrase:Ljava/lang/String;

.field public mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

.field mContactListener:Lcom/android/mms/MmsApp$UpdateContactUI;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mConversation:Lcom/android/mms/data/Conversation;

.field private mCopyToSimPopupWindow:Lcom/android/mms/ui/MessageBasePopupWindow;

.field private mCustomeNotRadioOffSimCountChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

.field private mCustomeSelectedSlotIdChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeSelectedSlotIdChangedListener;

.field private mCustomeUseableSimCountChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mDebugRecipients:Ljava/lang/String;

.field private mDelProgressDialog:Landroid/app/ProgressDialog;

.field private mFileLink:Ljava/lang/String;

.field mFlymeVersion:I

.field private mForwardMessageMode:Z

.field private mHandlerVcard:Landroid/os/Handler;

.field private mHasFowardSended:Z

.field private mHasSetSlotIdByShareByFlymeFlag:Z

.field private final mHttpProgressFilter:Landroid/content/IntentFilter;

.field private final mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

.field private mInputVisibleChange:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

.field private mInputVisibleChangeByKeyboard:Z

.field private mIsCurrentSlotOnBind:Z

.field private mIsImeShowing:Z

.field private mIsKeyboardOpen:Z

.field private mIsKeyboardShowing:Z

.field private mIsLandscape:Z

.field private mIsMultiChoiceMode:Z

.field mIsNeedShowKeyboard:Z

.field protected mIsPhoneOperator:Z

.field private mIsRunning:Z

.field private mIsSelectContact:Z

.field private mIsSmsEnabled:Z

.field private mKeyBoardShowFlags:I

.field private mKeyboardMenuItem:Landroid/view/MenuItem;

.field private mLastRecipientCount:I

.field private mLastSmoothScrollPosition:I

.field private mLastUpdateTime:Landroid/text/format/Time;

.field private mLocation:Ljava/lang/String;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

.field public mMsgGroupId:Ljava/lang/String;

.field public mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mMultiCallback:Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

.field private mOnAttachmentClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

.field protected mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

.field private mPopupActionModeCallback:Lcom/android/mms/ui/MessageListView$PopupActionModeCallback;

.field private mPossiblePendingNotification:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

.field private mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

.field private mRecordCallback:Lcom/android/mms/util/VoiceRecorder$RecordCallback;

.field mResetMessageAfterRecordRunnable:Ljava/lang/Runnable;

.field mResetMessageRunnable:Ljava/lang/Runnable;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mScrollOnSend:Z

.field public mSelectedId:J

.field private mSelectedImsi:Ljava/lang/String;

.field private mSelectedSlotId:I

.field private mSendDiscreetMode:Z

.field private mSendMsgBtn:Landroid/widget/ImageButton;

.field private mSendingMessage:Z

.field private mSentMessage:Z

.field private mSharedByContact:Z

.field private mShortAddress:Ljava/lang/String;

.field private final mShutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSingleChoiceModeSBtn:Lcom/meizu/common/widget/SelectionButton;

.field private final mSipOrSdReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private mSubjectTextEditor:Landroid/widget/EditText;

.field private mTempMmsUri:Landroid/net/Uri;

.field private mTextCounterView:Landroid/widget/TextView;

.field private mTextEditor:Lcom/android/mms/view/EditTextEx;

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private mToastForDraftSave:Z

.field private mVCardHandlerImpl:Lcom/android/mms/ui/ComposeMessageActivity$VCardEntryhandlerImpl;

.field private mVcfStringInfo:Ljava/lang/String;

.field private mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

.field private mWaitingForSubActivity:Z

.field protected mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

.field private saveTempMsg:Lcom/android/mms/ui/MessageItem;

.field private sending_msg_id:J

.field private snsPicView:Landroid/view/View;

.field private tempDataUri:Landroid/net/Uri;

.field private tempUri:Landroid/net/Uri;

.field public voiceBtn:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5545
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->mVideoUri:Ljava/lang/String;

    .line 5547
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->mImageUri:Ljava/lang/String;

    .line 8610
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "association_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->ASSOCIATION_ID:[Ljava/lang/String;

    .line 10402
    sput v3, Lcom/android/mms/ui/ComposeMessageActivity;->REQUEST_REFRESH_VCARD_DATA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 296
    invoke-direct {p0}, Lcom/android/mms/MmsBaseActivity;-><init>()V

    .line 415
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHasFowardSended:Z

    .line 529
    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->sending_msg_id:J

    .line 534
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedShowKeyboard:Z

    .line 536
    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedId:J

    .line 553
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChooseQuickPhrase:Ljava/lang/String;

    .line 554
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiCallback:Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

    .line 560
    iput v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    .line 569
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPhoneOperator:Z

    .line 573
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanelCurrentMode:I

    .line 574
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardShowing:Z

    .line 584
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->DISABLE_SEND_BTN_WHEN_NO_SIM_CARD:Z

    .line 586
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHasSetSlotIdByShareByFlymeFlag:Z

    .line 592
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsMultiChoiceMode:Z

    .line 599
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 653
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$4;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    .line 741
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$7;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    .line 801
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->tempUri:Landroid/net/Uri;

    .line 802
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->tempDataUri:Landroid/net/Uri;

    .line 803
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFileLink:Ljava/lang/String;

    .line 2122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    .line 2125
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$11;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 2409
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$19;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$19;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

    .line 2453
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedNotifyContactHeaderWidget:Z

    .line 2640
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isFlyMeOpen:Z

    .line 2641
    iput v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFlymeVersion:I

    .line 4055
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$32;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$32;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    .line 4066
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$33;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$33;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageAfterRecordRunnable:Ljava/lang/Runnable;

    .line 4266
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyBoardShowFlags:I

    .line 4268
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    .line 5207
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$45;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$45;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 5741
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$53;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$53;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 5778
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$54;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$54;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 5943
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$57;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$57;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 5990
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$58;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$58;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputVisibleChange:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 6969
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$62;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$62;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 7410
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$63;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$63;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactListener:Lcom/android/mms/MmsApp$UpdateContactUI;

    .line 8512
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$66;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$66;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSipOrSdReceiver:Landroid/content/BroadcastReceiver;

    .line 8976
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isPrepareForwardPduOk:Z

    .line 9355
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$72;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$72;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPopupActionModeCallback:Lcom/android/mms/ui/MessageListView$PopupActionModeCallback;

    .line 9777
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$73;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$73;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOnAttachmentClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 10100
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputVisibleChangeByKeyboard:Z

    .line 10190
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedSelectAll:Z

    .line 10221
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBindImsi:Ljava/lang/String;

    .line 10222
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCurrentSlotOnBind:Z

    .line 10241
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBindImsiContentObserver:Landroid/database/ContentObserver;

    .line 10316
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAutoChangeScreen:Z

    .line 10351
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$82;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$82;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 10404
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSharedByContact:Z

    .line 10406
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$VCardEntryhandlerImpl;

    invoke-direct {v0, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$VCardEntryhandlerImpl;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVCardHandlerImpl:Lcom/android/mms/ui/ComposeMessageActivity$VCardEntryhandlerImpl;

    .line 10427
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$83;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$83;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHandlerVcard:Landroid/os/Handler;

    .line 10448
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$84;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$84;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecordCallback:Lcom/android/mms/util/VoiceRecorder$RecordCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->saveFlymeMmsAttachment(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10000(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    return v0
.end method

.method static synthetic access$10100(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshCmaFrmMarginWhenActionmode(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedSelectAll:Z

    return v0
.end method

.method static synthetic access$10202(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedSelectAll:Z

    return p1
.end method

.method static synthetic access$10300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->editSpace:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshListViewPadding(I)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showBottomPanel(I)V

    return-void
.end method

.method static synthetic access$10602(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsMultiChoiceMode:Z

    return p1
.end method

.method static synthetic access$10700(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/HashMap;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardSelectedMessages(Ljava/util/HashMap;Z)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->deleteSelectedMessagesFromSubmenu(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFileLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Lcom/meizu/widget/RecipientStateInfo$SipState;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/meizu/widget/RecipientStateInfo$SipState;
    .param p3, "x3"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->setSipStatuWhenOffline(Ljava/lang/String;Lcom/meizu/widget/RecipientStateInfo$SipState;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/util/VoiceRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->makeForwardMmsUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11300(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshPopWindowWhenOrientionChange()V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showChooseStateUI()V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMms(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/mms/ui/ComposeMessageActivity;ILcom/android/mms/ui/MessageItem;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/mms/ui/MessageItem;
    .param p3, "x3"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->updateIsFavorite(ILcom/android/mms/ui/MessageItem;I)V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageBasePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCopyToSimPopupWindow:Lcom/android/mms/ui/MessageBasePopupWindow;

    return-object v0
.end method

.method static synthetic access$11802(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageBasePopupWindow;)Lcom/android/mms/ui/MessageBasePopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageBasePopupWindow;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCopyToSimPopupWindow:Lcom/android/mms/ui/MessageBasePopupWindow;

    return-object p1
.end method

.method static synthetic access$11900(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showEditSpace()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->tempDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->clearSingleChoiceSBtn(Z)V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(IZ)V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmAddLocationDialog(Z)V

    return-void
.end method

.method static synthetic access$12300(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasRecipient()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->attachPhrase()V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateIsCurrentSlotOnBind(Z)V

    return-void
.end method

.method static synthetic access$12702(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputVisibleChangeByKeyboard:Z

    return p1
.end method

.method static synthetic access$12802(Lcom/android/mms/ui/ComposeMessageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanelCurrentMode:I

    return p1
.end method

.method static synthetic access$12900(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBindImsi()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/view/ChangeSlotViewHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenuHelper:Lcom/android/mms/view/ChangeSlotViewHelper;

    return-object v0
.end method

.method static synthetic access$13200(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAutoChangeScreen:Z

    return v0
.end method

.method static synthetic access$13202(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAutoChangeScreen:Z

    return p1
.end method

.method static synthetic access$13300(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setScreenOrientation()V

    return-void
.end method

.method static synthetic access$13500(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVcfStringInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13502(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVcfStringInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13600()I
    .locals 1

    .prologue
    .line 296
    sget v0, Lcom/android/mms/ui/ComposeMessageActivity;->REQUEST_REFRESH_VCARD_DATA:I

    return v0
.end method

.method static synthetic access$13700(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHandlerVcard:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13800(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->addText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded(Landroid/net/Uri;ZZZ)V

    return-void
.end method

.method static synthetic access$14000(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/meizu/widget/RecipientEdit;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateComposeTextHint()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->setFlyMeStatus(ZI)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSelectContact:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/view/EditTextEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCurrentSlotOnBind:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/view/NewConsationTitleFrm;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showErrorDailogForRecipients(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->snsPicView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkForTooManyRecipients()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyBoardShowFlags:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ComposeMessageActivity;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->hasOtherKeyboardShow(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;
    .param p2, "x2"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateKeyboardStatus(Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateVoiceBtnAndCounter()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$4401(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->drawAttachViewAndSubject(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isShareByFlymeMsg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSlideshowHasFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->toastConvertInfo(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMessageActivity;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->viewMmsMessageAttachment(IJ)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/view/MmsRichContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetMessage()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetMessageAfterRecord()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQueryReally(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/ComposeMessageActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showTipForSended(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showPrepareForwardProgress(I)V

    return-void
.end method

.method static synthetic access$6002(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/view/AttachmentGroupView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentAdd:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$6401(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showOrHideSoftKeyboard(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->dismissDelProgress()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVcard(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showMessageDetails(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$7101(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedNotifyContactHeaderWidget:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedNotifyContactHeaderWidget:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->needHideCounter()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->setMmsRichContainerLandMaxHeight(Z)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->setKeyboardPanelStatus(I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideTextCounter()V

    return-void
.end method

.method static synthetic access$7902(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardShowing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->setImeShowingStatus(Z)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showAttachGroupView(Z)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideQuickReplyPopupView()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBottomPanelInputShownChange(Z)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    return v0
.end method

.method static synthetic access$8502(Lcom/android/mms/ui/ComposeMessageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    return p1
.end method

.method static synthetic access$8602(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z

    return v0
.end method

.method static synthetic access$8702(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/mms/ui/ComposeMessageActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # J

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->afterSend(J)V

    return-void
.end method

.method static synthetic access$8902(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sanityCheckConversation()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isGroupRecipent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->smoothScrollToEnd(ZI)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p1, "x1"    # Lcom/android/mms/data/ContactList;
    .param p2, "x2"    # Z

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;Z)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateActionBarPhoto()V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    return-object v0
.end method

.method private addAttachment(IZ)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "replace"    # Z

    .prologue
    .line 4740
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isOldFlymeVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4742
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->toastShowFlymeSent(ZI)V

    .line 4745
    :cond_0
    const-wide/16 v8, 0x0

    .line 4746
    .local v8, "currentSlideSize":J
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v14

    .line 4747
    .local v14, "slideShow":Lcom/android/mms/model/SlideshowModel;
    if-eqz p2, :cond_1

    if-eqz v14, :cond_1

    .line 4748
    invoke-static {v14}, Lcom/android/mms/data/WorkingMessage;->removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V

    .line 4749
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v11

    .line 4750
    .local v11, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v11}, Lcom/android/mms/model/SlideModel;->getSlideSize()J

    move-result-wide v8

    .line 4752
    .end local v11    # "slide":Lcom/android/mms/model/SlideModel;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 4871
    :cond_2
    :goto_0
    return-void

    .line 4754
    :pswitch_0
    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectImage(Landroid/content/Context;I)V

    .line 4755
    sget v0, Lcom/flyme/internal/R$anim;->mz_activity_extra_to_next_open_enter:I

    sget v1, Lcom/flyme/internal/R$anim;->mz_activity_extra_to_next_open_exit:I

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 4765
    :pswitch_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.action.MEIZU_CAMERA_APP_MMS_EX"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4766
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4768
    const-string v0, "meizu_video_record_max_size"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSnsMessageSize()J

    move-result-wide v2

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4769
    const-string v0, "isFlymeMms"

    const/4 v1, 0x3

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4783
    :goto_1
    const/high16 v0, 0x80000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4785
    const/16 v0, 0x65

    invoke-virtual {p0, v7, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4770
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4772
    const-string v0, "meizu_video_record_max_size"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxFlymeMessageSize()J

    move-result-wide v2

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4773
    const-string v0, "isFlymeMms"

    const/4 v1, 0x2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 4776
    :cond_4
    const-string v0, "output"

    sget-object v1, Lcom/android/mms/TempFileProvider;->SCRAP_IMAGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4778
    const-string v0, "output_video"

    sget-object v1, Lcom/android/mms/TempFileProvider;->SCRAP_RECORDE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4779
    const-string v0, "meizu_video_record_max_size"

    const-wide/32 v2, 0x43800

    invoke-virtual {v7, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4781
    const-string v0, "isFlymeMms"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 4790
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_2
    const/16 v0, 0x66

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectVideo(Landroid/content/Context;I)V

    goto :goto_0

    .line 4794
    :pswitch_3
    invoke-static {v14, v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;J)J

    move-result-wide v12

    .line 4795
    .local v12, "sizeLimit":J
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-lez v0, :cond_5

    .line 4796
    const/16 v0, 0x67

    invoke-static {p0, v0, v12, v13}, Lcom/android/mms/ui/MessageUtils;->recordVideo(Landroid/app/Activity;IJ)V

    goto :goto_0

    .line 4801
    :cond_5
    const v0, 0x7f0f0049

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(Ljava/lang/CharSequence;Landroid/content/Context;IIZII)V

    goto/16 :goto_0

    .line 4812
    .end local v12    # "sizeLimit":J
    :pswitch_4
    const/16 v0, 0x68

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 4816
    :pswitch_5
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;->enum_Auto:Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateKeyboardStatus(Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;I)V

    .line 4817
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/view/MmsRichContainer;->isAttachmentSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4818
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/view/MmsRichContainer;->selectedAttachment(ZI)V

    goto/16 :goto_0

    .line 4822
    :pswitch_6
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V

    goto/16 :goto_0

    .line 4826
    :pswitch_7
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4827
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v0, "vnd.android.cursor.dir/contact"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4828
    const-string v0, "com.android.contacts.extra.TITLE_EXTRA"

    const v1, 0x7f0f0160

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4830
    const-string v0, "com.android.contacts.extra.REQUESTED_INFO_TYPE"

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getAttachMentContactType(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4831
    const-string v0, "com.android.contacts.extra.SHOULD_INCLUDE_PROFILE"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4833
    const-string v0, "com.android.contacts.extra.REQUESTED_ORIENTATION"

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4834
    const/high16 v0, 0x80000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4836
    const/16 v0, 0x6f

    invoke-virtual {p0, v7, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4840
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4841
    const/16 v0, 0x70

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectAddFolder(Landroid/content/Context;IZ)V

    .line 4853
    :goto_2
    sget v0, Lcom/flyme/internal/R$anim;->mz_activity_extra_to_next_open_enter:I

    sget v1, Lcom/flyme/internal/R$anim;->mz_activity_extra_to_next_open_exit:I

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 4842
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 4843
    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/SipMessageManager;->isSipMessageOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4844
    const/16 v0, 0x70

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectAddFolder(Landroid/content/Context;IZ)V

    goto :goto_2

    .line 4845
    :cond_7
    invoke-static {}, Lcom/android/mms/transaction/sns/SnsHelper;->hasLoginSnsAccount()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4846
    const/16 v0, 0x70

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectAddFolder(Landroid/content/Context;IZ)V

    goto :goto_2

    .line 4848
    :cond_8
    const/16 v0, 0x70

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectAddFolder(Landroid/content/Context;IZ)V

    goto :goto_2

    .line 4851
    :cond_9
    const/16 v0, 0x70

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectAddFolder(Landroid/content/Context;IZ)V

    goto :goto_2

    .line 4856
    :pswitch_9
    const/4 v10, 0x0

    .line 4857
    .local v10, "locationIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/location/BaseGetLocationUtils;->isUseGoogle()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4858
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "locationIntent":Landroid/content/Intent;
    sget-object v0, Lcom/android/mms/location/BaseGetLocationUtils;->GET_LOCATION_ACTION_GOOGLE:Ljava/lang/String;

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4862
    .restart local v10    # "locationIntent":Landroid/content/Intent;
    :goto_3
    const-string v0, "send_as_mms"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->canSendLocationAsMms()Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4863
    const/16 v0, 0x73

    invoke-virtual {p0, v10, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4860
    :cond_a
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "locationIntent":Landroid/content/Intent;
    sget-object v0, Lcom/android/mms/location/BaseGetLocationUtils;->GET_LOCATION_ACTION_AMAP:Ljava/lang/String;

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v10    # "locationIntent":Landroid/content/Intent;
    goto :goto_3

    .line 4866
    .end local v10    # "locationIntent":Landroid/content/Intent;
    :pswitch_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->addTimer(Z)V

    goto/16 :goto_0

    .line 4752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "append"    # Z

    .prologue
    const/4 v4, 0x0

    .line 5553
    if-eqz p2, :cond_1

    .line 5559
    const-string v1, "*/*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5560
    .local v0, "wildcard":Z
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/ComposeMessageActivity;->mImageUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5561
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    .line 5601
    .end local v0    # "wildcard":Z
    :cond_1
    :goto_0
    return-void

    .line 5562
    .restart local v0    # "wildcard":Z
    :cond_2
    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/ComposeMessageActivity;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5564
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 5565
    :cond_4
    const-string v1, "audio/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5566
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;)V

    goto :goto_0

    .line 5567
    :cond_5
    const-string v1, "text/x-vcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5568
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSharedByContact:Z

    if-eqz v1, :cond_6

    .line 5570
    new-instance v1, Lcom/android/mms/vcard/VcardTools;

    invoke-direct {v1, p0}, Lcom/android/mms/vcard/VcardTools;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVCardHandlerImpl:Lcom/android/mms/ui/ComposeMessageActivity$VCardEntryhandlerImpl;

    invoke-virtual {v1, p2, v2}, Lcom/android/mms/vcard/VcardTools;->getVcfStringInfo(Landroid/net/Uri;Lcom/meizu/vcard/VCardEntryHandler;)V

    goto :goto_0

    .line 5572
    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5575
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v1

    invoke-static {p0, p2, v1}, Lcom/android/mms/vcard/VcardTools;->makeVCard(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object p2

    .line 5577
    :cond_7
    invoke-direct {p0, p2, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->addVcard(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 5579
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 5581
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flyme MMS type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5582
    const/4 v1, 0x1

    invoke-direct {p0, p2, v4, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->addFile(Landroid/net/Uri;ZZ)V

    goto :goto_0

    .line 5585
    :cond_9
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$52;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$52;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private addAudio(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 5400
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 5401
    .local v0, "result":I
    const v1, 0x7f0f00ea

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 5402
    return-void
.end method

.method private addFile(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "append"    # Z

    .prologue
    .line 5380
    if-eqz p1, :cond_0

    .line 5381
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 5382
    .local v0, "result":I
    const v1, 0x7f0f0166

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 5384
    .end local v0    # "result":I
    :cond_0
    return-void
.end method

.method private addFile(Landroid/net/Uri;ZZ)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "append"    # Z
    .param p3, "isFlyme"    # Z

    .prologue
    .line 5393
    if-eqz p1, :cond_0

    .line 5394
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 5395
    .local v0, "result":I
    const v1, 0x7f0f0166

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 5397
    .end local v0    # "result":I
    :cond_0
    return-void
.end method

.method private addImage(Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "append"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 5306
    const-string v0, "Mms:app"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImage: append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 5310
    :cond_0
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5311
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->copyImageToFMessagePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 5312
    .local v6, "newUri":Ljava/lang/String;
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5315
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v5, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v7

    .line 5316
    .local v7, "result":I
    sget-boolean v0, Lcom/android/mms/MmsApp;->CMCC:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5317
    const/4 v0, -0x4

    if-eq v7, v0, :cond_1

    const/4 v0, -0x2

    if-ne v7, v0, :cond_3

    .line 5319
    :cond_1
    const-string v0, "Mms:app"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resize image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 5328
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZI)V

    .line 5334
    :goto_0
    return-void

    .line 5333
    :cond_3
    const v0, 0x7f0f00eb

    invoke-direct {p0, v7, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    goto :goto_0
.end method

.method private addImageAsync(Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "append"    # Z

    .prologue
    .line 5297
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$47;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$47;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    const/4 v2, 0x0

    const v3, 0x7f0f0062

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 5303
    return-void
.end method

.method private addRecipientsListeners()V
    .locals 0

    .prologue
    .line 7440
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 7441
    return-void
.end method

.method private addText(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 10376
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v6}, Lcom/android/mms/view/EditTextEx;->getSelectionStart()I

    move-result v1

    .line 10377
    .local v1, "cursorPosition":I
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v6}, Lcom/android/mms/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 10378
    .local v0, "ch":Landroid/text/Editable;
    const/4 v2, 0x0

    .line 10379
    .local v2, "needPrefixReturn":Z
    const/4 v3, 0x0

    .line 10381
    .local v3, "needSuffixReturn":Z
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 10383
    :cond_0
    const/4 v2, 0x0

    .line 10384
    const/4 v3, 0x0

    .line 10398
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_8

    const-string v4, "\n"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_9

    const-string v4, "\n"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10399
    return-void

    .line 10385
    :cond_1
    if-nez v1, :cond_3

    .line 10387
    const/4 v2, 0x0

    .line 10388
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_2

    move v3, v4

    :goto_3
    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_3

    .line 10389
    :cond_3
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    if-ne v1, v6, :cond_5

    .line 10391
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_4

    move v2, v4

    .line 10392
    :goto_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    move v2, v5

    .line 10391
    goto :goto_4

    .line 10395
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_6

    move v2, v4

    .line 10396
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_7

    move v3, v4

    :goto_6
    goto :goto_0

    :cond_6
    move v2, v5

    .line 10395
    goto :goto_5

    :cond_7
    move v3, v5

    .line 10396
    goto :goto_6

    .line 10398
    :cond_8
    const-string v4, ""

    goto :goto_1

    :cond_9
    const-string v4, ""

    goto :goto_2
.end method

.method private addVCardAsync(Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "append"    # Z

    .prologue
    .line 5353
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$49;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$49;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    const/4 v2, 0x0

    const v3, 0x7f0f0062

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 5360
    return-void
.end method

.method private addVcard(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "append"    # Z

    .prologue
    .line 5368
    if-eqz p1, :cond_0

    .line 5369
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 5370
    .local v0, "result":I
    const v1, 0x7f0f0165

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 5372
    .end local v0    # "result":I
    :cond_0
    return-void
.end method

.method private addVideo(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "append"    # Z

    .prologue
    .line 5346
    if-eqz p1, :cond_0

    .line 5347
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 5348
    .local v0, "result":I
    const v1, 0x7f0f00ec

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 5350
    .end local v0    # "result":I
    :cond_0
    return-void
.end method

.method private addVideoAsync(Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "append"    # Z

    .prologue
    .line 5337
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$48;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$48;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    const/4 v2, 0x0

    const v3, 0x7f0f0062

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 5343
    return-void
.end method

.method private afterSend(J)V
    .locals 11
    .param p1, "threadid"    # J

    .prologue
    const v10, 0x7f050012

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6541
    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v6, :cond_5

    .line 6545
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6547
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "forwarded_message"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 6548
    .local v2, "isForward":Z
    const/4 v0, 0x0

    .line 6549
    .local v0, "hiddenKeyboard":Z
    if-eqz v2, :cond_2

    .line 6551
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 6552
    .local v3, "tempIntent":Landroid/content/Intent;
    const-string v6, "thread_id"

    invoke-virtual {v3, v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6553
    const-string v6, "sending_msg_id"

    iget-wide v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->sending_msg_id:J

    invoke-virtual {v3, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6554
    sget-boolean v6, Lcom/android/mms/util/DualSimMessageUtils;->IS_MULTI_SIM_DEVICE:Z

    if-eqz v6, :cond_0

    .line 6555
    const-string v6, "conversation_last_imsi"

    iget v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-static {v7}, Lcom/android/mms/util/DualSimMessageUtils;->getImsiBySlotId(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6557
    :cond_0
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setResult(ILandroid/content/Intent;)V

    .line 6558
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6560
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/data/Conversation;->setSnsConversation(Z)V

    .line 6561
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideCmaTitle()V

    .line 6562
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    .line 6563
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->resetActionBarHeight(Landroid/app/ActionBar;)V

    .line 6564
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;Z)V

    .line 6565
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    new-array v7, v4, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->isSnsConversation()Z

    move-result v9

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->getMaxTextLimit(Z)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v5

    invoke-virtual {v6, v7}, Lcom/android/mms/view/EditTextEx;->setFilters([Landroid/text/InputFilter;)V

    .line 6566
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->clearMmsDraftText()V

    .line 6567
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 6568
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {v6}, Lcom/android/mms/data/Conversation;->putConversationCacheAfterSendNewMsg(Lcom/android/mms/data/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6569
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/mms/data/Conversation;->setMessageCount(I)V

    .line 6570
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHasFowardSended:Z

    .line 6575
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->showOrHideSoftKeyboard(Z)Z

    move-result v0

    .line 6578
    .end local v3    # "tempIntent":Landroid/content/Intent;
    :cond_2
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    if-eqz v4, :cond_4

    .line 6580
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    new-instance v5, Lcom/android/mms/ui/ComposeMessageActivity$61;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$61;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/mms/view/EditTextEx;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6642
    .end local v0    # "hiddenKeyboard":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isForward":Z
    :cond_3
    :goto_0
    return-void

    .line 6591
    .restart local v0    # "hiddenKeyboard":Z
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "isForward":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 6593
    if-eqz v2, :cond_3

    .line 6594
    invoke-virtual {p0, v10, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 6600
    .end local v0    # "hiddenKeyboard":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isForward":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6603
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/data/Conversation;->setSnsConversation(Z)V

    .line 6605
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideCmaTitle()V

    .line 6606
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    .line 6607
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->resetActionBarHeight(Landroid/app/ActionBar;)V

    .line 6608
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;Z)V

    .line 6609
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    new-array v7, v4, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->isSnsConversation()Z

    move-result v9

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->getMaxTextLimit(Z)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v5

    invoke-virtual {v6, v7}, Lcom/android/mms/view/EditTextEx;->setFilters([Landroid/text/InputFilter;)V

    .line 6610
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->clearMmsDraftText()V

    .line 6612
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/mms/data/Conversation;->setMessageCount(I)V

    .line 6614
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {v6}, Lcom/android/mms/data/Conversation;->putConversationCacheAfterSendNewMsg(Lcom/android/mms/data/Conversation;)Z

    .line 6618
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 6622
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initIsPhoneOperator()V

    .line 6623
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateOperatorViewState()V

    .line 6626
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v7

    if-le v7, v4, :cond_7

    :goto_1
    invoke-virtual {v6, v4}, Lcom/android/mms/ui/MessageListAdapter;->setIsGroupConversation(Z)V

    .line 6634
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 6641
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v4, v5}, Lcom/android/mms/view/MmsRichContainer;->showTimer(Z)V

    goto/16 :goto_0

    :cond_7
    move v4, v5

    .line 6626
    goto :goto_1
.end method

.method private attachPhrase()V
    .locals 2

    .prologue
    .line 9651
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    if-nez v0, :cond_0

    .line 9652
    const v0, 0x7f0e0048

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/quickreply/QuickReplyView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    .line 9653
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    invoke-virtual {v0}, Lcom/android/mms/quickreply/QuickReplyView;->initListView()V

    .line 9654
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    invoke-virtual {v0, p0}, Lcom/android/mms/quickreply/QuickReplyView;->setOnItemClickCallback(Lcom/android/mms/quickreply/QuickReplyView$OnQuickReplyItemClickCallback;)V

    .line 9656
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/quickreply/QuickReplyView;->setVisibility(I)V

    .line 9657
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    invoke-virtual {v0}, Lcom/android/mms/quickreply/QuickReplyView;->startQuery()V

    .line 9658
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBottomDividerVisibility(Z)V

    .line 9659
    return-void
.end method

.method private bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;Z)V
    .locals 7
    .param p1, "list"    # Lcom/android/mms/data/ContactList;
    .param p2, "refreshViewStatus"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2566
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v2, v5}, Lcom/android/mms/view/MzContactHeaderWidget;->setSnsIconState(Z)V

    .line 2567
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2600
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v2, p1}, Lcom/android/mms/view/MzContactHeaderWidget;->bindFromContactsList(Lcom/android/mms/data/ContactList;)V

    .line 2606
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateActionBarPhoto()V

    .line 2607
    if-eqz p2, :cond_0

    .line 2608
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->updateContactHeaderViewStatus(Z)V

    .line 2609
    :cond_0
    return-void

    .line 2569
    :pswitch_0
    const-string v1, ""

    .line 2573
    .local v1, "recipient":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v2, v1}, Lcom/android/mms/view/MzContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2576
    .end local v1    # "recipient":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 2578
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/MzTelephony$MmsExt;->isSnsRecipient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2580
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {p1, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v3, v2}, Lcom/android/mms/view/MzContactHeaderWidget;->bindFromSocialProfile(Lcom/android/mms/data/Contact;)V

    .line 2581
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v2, v6}, Lcom/android/mms/view/MzContactHeaderWidget;->setSnsIconState(Z)V

    .line 2582
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    sget-object v3, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCurrentSlotOnBind:Z

    invoke-virtual {v2, v0, v3, v5, v4}, Lcom/android/mms/view/MzContactHeaderWidget;->setSipDestState(Ljava/lang/String;Lcom/meizu/widget/RecipientStateInfo$SipState;IZ)V

    goto :goto_0

    .line 2583
    :cond_1
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isPhoneNumberFor3Digit(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2585
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {p1, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v3, v2}, Lcom/android/mms/view/MzContactHeaderWidget;->bindFromPhoneNumber(Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 2587
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {p1, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v3, v2}, Lcom/android/mms/view/MzContactHeaderWidget;->bindFromEmail(Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 2567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private canSendLocationAsMms()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9614
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/android/mms/util/SnsMessageManager;->canSendSnsMessage(Landroid/content/Context;Z)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2721
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDownload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2723
    const/16 v0, 0x213

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2725
    const/4 v0, 0x1

    .line 2727
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2711
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2713
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2715
    const/4 v0, 0x1

    .line 2717
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeMmsSms(J)V
    .locals 5
    .param p1, "changeToType"    # J

    .prologue
    const/4 v4, 0x1

    .line 9327
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 9328
    .local v0, "isMms":Z
    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 9332
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v1}, Lcom/android/mms/view/EditTextEx;->requestFocus()Z

    .line 9333
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 9334
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 9336
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v4}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 9348
    :cond_0
    :goto_0
    return-void

    .line 9339
    :cond_1
    if-nez v0, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 9342
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v2, ""

    invoke-virtual {v1, v2, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 9343
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 9344
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v1}, Lcom/android/mms/view/EditTextEx;->requestFocus()Z

    .line 9345
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showOrHideSoftKeyboard(Z)Z

    goto :goto_0
.end method

.method private checkForTooManyRecipients()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1510
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v8

    .line 1511
    .local v8, "recipientLimit":I
    const v1, 0x7fffffff

    if-eq v8, v1, :cond_0

    .line 1512
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v7

    .line 1513
    .local v7, "recipientCount":I
    if-le v7, v8, :cond_1

    move v9, v2

    .line 1515
    .local v9, "tooMany":Z
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    if-eq v7, v1, :cond_0

    .line 1518
    iput v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 1519
    if-eqz v9, :cond_0

    .line 1520
    const v1, 0x7f0f0060

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1522
    .local v0, "tooManyMsg":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(Ljava/lang/CharSequence;Landroid/content/Context;IIZII)V

    .line 1533
    .end local v0    # "tooManyMsg":Ljava/lang/String;
    .end local v7    # "recipientCount":I
    .end local v9    # "tooMany":Z
    :cond_0
    return-void

    .restart local v7    # "recipientCount":I
    :cond_1
    move v9, v5

    .line 1513
    goto :goto_0
.end method

.method private checkPendingNotification()V
    .locals 1

    .prologue
    .line 6985
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6986
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 6987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPossiblePendingNotification:Z

    .line 6989
    :cond_0
    return-void
.end method

.method private final clearShareByFlymeMsgExtra()V
    .locals 3

    .prologue
    .line 5471
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5472
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "shareByFlymeMsg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5475
    :cond_0
    :goto_0
    return-void

    .line 5474
    :cond_1
    const-string v1, "shareByFlymeMsg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private clearSingleChoiceSBtn(Z)V
    .locals 3
    .param p1, "isNeedHide"    # Z

    .prologue
    const/4 v2, 0x0

    .line 10210
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSingleChoiceModeSBtn:Lcom/meizu/common/widget/SelectionButton;

    if-eqz v0, :cond_0

    .line 10211
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSingleChoiceModeSBtn:Lcom/meizu/common/widget/SelectionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10212
    if-eqz p1, :cond_0

    .line 10213
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedSelectAll:Z

    .line 10214
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v0, v2}, Lcom/android/mms/view/MzContactHeaderWidget;->setSelectionButtonState(Z)V

    .line 10217
    :cond_0
    return-void
.end method

.method private clearVoiceRecorder()V
    .locals 1

    .prologue
    .line 10367
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    if-eqz v0, :cond_0

    .line 10368
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    invoke-virtual {v0}, Lcom/android/mms/util/VoiceRecorder;->destory()V

    .line 10370
    :cond_0
    return-void
.end method

.method public static computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;J)J
    .locals 5
    .param p0, "slideShow"    # Lcom/android/mms/model/SlideshowModel;
    .param p1, "currentSlideSize"    # J

    .prologue
    .line 4875
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    add-int/lit16 v2, v2, -0x400

    int-to-long v0, v2

    .line 4876
    .local v0, "sizeLimit":J
    if-eqz p0, :cond_0

    .line 4877
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 4883
    add-long/2addr v0, p1

    .line 4885
    :cond_0
    return-wide v0
.end method

.method private confirmAddLocationDialog(Z)V
    .locals 6
    .param p1, "hasInvalidRecipient"    # Z

    .prologue
    const v5, 0x7f0f0075

    const/4 v4, 0x0

    .line 9625
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9626
    .local v0, "dialogBilder":Landroid/app/AlertDialog$Builder;
    if-nez p1, :cond_0

    .line 9627
    const v2, 0x7f0f024f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 9629
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    invoke-direct {v2, p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9630
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 9642
    :goto_0
    return-void

    .line 9632
    :cond_0
    const v2, 0x7f0f004f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 9634
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040078

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/view/MmsEllipTextView;

    .line 9635
    .local v1, "view":Lcom/android/mms/view/MmsEllipTextView;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit;->formatInvalidNumbers()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v3}, Lcom/meizu/widget/RecipientEdit;->getInvalidNumbers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/view/MmsEllipTextView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 9636
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 9638
    const v2, 0x7f0f0076

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9639
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$RemoveIgnoreInvalidRecipientListener;

    invoke-direct {v2, p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$RemoveIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9640
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "locked"    # Z

    .prologue
    .line 5931
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5932
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5933
    if-eqz p2, :cond_0

    const v1, 0x7f0f00a4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5935
    const v1, 0x7f0f00a8

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5936
    const v1, 0x7f0f0076

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5937
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5938
    return-void

    .line 5933
    :cond_0
    const v1, 0x7f0f00a3

    goto :goto_0
.end method

.method private confirmSendMessageIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1272
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded(Landroid/net/Uri;ZZZ)V

    .line 1273
    return-void
.end method

.method private confirmSendMessageIfNeeded(Landroid/net/Uri;ZZZ)V
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isRecord"    # Z
    .param p3, "isLocation"    # Z
    .param p4, "isSendDirectSaveDraft"    # Z

    .prologue
    .line 1284
    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/SipMessageManager;->isSipMessageOn()Z

    move-result v12

    .line 1286
    .local v12, "isSipSwitchOpen":Z
    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeSmsOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x1

    .line 1289
    .local v8, "canSendSipMsg":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1290
    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v1}, Lcom/android/mms/view/MzContactHeaderWidget;->containsEmail()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1291
    const-string v13, ""

    .line 1293
    .local v13, "msg":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 1295
    const v1, 0x7f0f01a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1300
    :goto_1
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1301
    .local v9, "dialogBilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v9, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0075

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 1471
    .end local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "msg":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 1286
    .end local v8    # "canSendSipMsg":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1298
    .restart local v8    # "canSendSipMsg":Z
    .restart local v13    # "msg":Ljava/lang/String;
    :cond_2
    const v1, 0x7f0f01a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 1307
    .end local v13    # "msg":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v1}, Lcom/android/mms/view/MzContactHeaderWidget;->containSnsAccount()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/mms/transaction/sns/SnsHelper;->hasLoginSnsAccount()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1308
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1309
    .restart local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f01a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0075

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_2

    .line 1315
    .end local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    :cond_4
    if-eqz v8, :cond_8

    if-nez p2, :cond_8

    .line 1316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getTextLength()I

    move-result v14

    .line 1317
    .local v14, "msgLength":I
    const/16 v1, 0x1f4

    if-le v14, v1, :cond_6

    .line 1318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1320
    :cond_5
    const v1, 0x7f0f01a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1321
    .restart local v13    # "msg":Ljava/lang/String;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1322
    .restart local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v9, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0075

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 1325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1328
    .end local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "msg":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 1329
    .local v11, "fileUri":Landroid/net/Uri;
    if-eqz v11, :cond_8

    .line 1330
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 1331
    .local v10, "fileName":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1332
    .local v16, "str":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v15, v16, v1

    .line 1333
    .local v15, "name":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_8

    .line 1334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1336
    :cond_7
    const v1, 0x7f0f01a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1337
    .restart local v13    # "msg":Ljava/lang/String;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1338
    .restart local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v9, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0075

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 1341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1347
    .end local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "fileUri":Landroid/net/Uri;
    .end local v13    # "msg":Ljava/lang/String;
    .end local v14    # "msgLength":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "str":[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(ZLandroid/net/Uri;ZZZ)V

    goto/16 :goto_2

    .line 1351
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->hasInvalidRecipient()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1353
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1354
    .restart local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f004f

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1356
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040078

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/mms/view/MmsEllipTextView;

    .line 1357
    .local v17, "view":Lcom/android/mms/view/MmsEllipTextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->formatInvalidNumbers()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit;->getInvalidNumbers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/view/MmsEllipTextView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1360
    const v1, 0x7f0f0076

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v9, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1361
    const v1, 0x7f0f0075

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$RemoveIgnoreInvalidRecipientListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$RemoveIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v9, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1362
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1382
    .end local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "view":Lcom/android/mms/view/MmsEllipTextView;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1386
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1387
    .restart local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f020d

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0075

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1391
    .end local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getTextLength()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getMaxTextLimit(Z)I

    move-result v2

    if-le v1, v2, :cond_c

    .line 1393
    const v1, 0x7f0f020f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->getMaxTextLimit(Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v7

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/MessageUtils;->showToast(Ljava/lang/CharSequence;Landroid/content/Context;IIZII)V

    goto/16 :goto_2

    .line 1401
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(ZLandroid/net/Uri;ZZZ)V

    goto/16 :goto_2

    .line 1403
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->containsEmail()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e

    .line 1405
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->showErrorDailogForRecipients(I)V

    goto/16 :goto_2

    .line 1407
    :cond_e
    sget-boolean v1, Lcom/android/mms/MmsApp;->CMCC:Z

    if-nez v1, :cond_10

    if-nez v8, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->containsEmail()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1409
    const-string v13, ""

    .line 1411
    .restart local v13    # "msg":Ljava/lang/String;
    if-nez v12, :cond_f

    .line 1413
    const v1, 0x7f0f01a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1419
    :goto_3
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1420
    .restart local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v9, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0075

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1416
    .end local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    :cond_f
    const v1, 0x7f0f01a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 1423
    .end local v13    # "msg":Ljava/lang/String;
    :cond_10
    if-eqz v8, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1425
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1426
    .restart local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f01b5

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0075

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1429
    .end local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    :cond_11
    invoke-static {}, Lcom/android/mms/transaction/sns/SnsHelper;->hasLoginSnsAccount()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->containsSns()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_12

    .line 1431
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1432
    .restart local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f0205

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0075

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1437
    .end local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    :cond_12
    if-eqz v8, :cond_16

    if-nez p2, :cond_16

    .line 1438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getTextLength()I

    move-result v14

    .line 1439
    .restart local v14    # "msgLength":I
    const/16 v1, 0x1f4

    if-le v14, v1, :cond_14

    .line 1440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1442
    :cond_13
    const v1, 0x7f0f01a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1443
    .restart local v13    # "msg":Ljava/lang/String;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1444
    .restart local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v9, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0075

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 1447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1450
    .end local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "msg":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 1451
    .restart local v11    # "fileUri":Landroid/net/Uri;
    if-eqz v11, :cond_16

    .line 1452
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 1453
    .restart local v10    # "fileName":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1454
    .restart local v16    # "str":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v15, v16, v1

    .line 1455
    .restart local v15    # "name":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_16

    .line 1456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1458
    :cond_15
    const v1, 0x7f0f01a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1459
    .restart local v13    # "msg":Ljava/lang/String;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1460
    .restart local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v9, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0075

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 1463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1469
    .end local v9    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "fileUri":Landroid/net/Uri;
    .end local v13    # "msg":Ljava/lang/String;
    .end local v14    # "msgLength":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "str":[Ljava/lang/String;
    :cond_16
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(ZLandroid/net/Uri;ZZZ)V

    goto/16 :goto_2
.end method

.method private copyToClipboard(Lcom/android/mms/ui/MessageItem;)V
    .locals 1
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 7557
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7560
    :cond_0
    :goto_0
    return-void

    .line 7559
    :cond_1
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 7567
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ClipboardManager;

    .line 7568
    .local v7, "clip":Landroid/content/ClipboardManager;
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 7570
    const v0, 0x7f0f01b6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    .line 7576
    return-void
.end method

.method private copyToClipboard(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7531
    .local p1, "mSelected":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7532
    .local v0, "copyText":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 7533
    .local v4, "selectcnt":I
    if-nez v4, :cond_1

    .line 7550
    :cond_0
    :goto_0
    return-void

    .line 7537
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sortSelectMsg(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    .line 7539
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 7540
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;

    iget-object v3, v5, Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 7541
    .local v3, "msgItem":Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 7544
    iget-object v5, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 7545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7539
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7548
    .end local v3    # "msgItem":Lcom/android/mms/ui/MessageItem;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 7549
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    .line 7448
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7450
    .local v0, "intent":Landroid/content/Intent;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 7451
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7454
    :cond_0
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "lastImsi"    # Ljava/lang/String;

    .prologue
    .line 7458
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7460
    .local v0, "intent":Landroid/content/Intent;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 7461
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7463
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7464
    const-string v1, "conversation_last_imsi"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7467
    :cond_1
    return-object v0
.end method

.method private deleteSelectedMessagesFromSubmenu(Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7627
    .local p1, "mSelected":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;>;"
    const/4 v6, 0x0

    .line 7628
    .local v6, "tempHasMms":Z
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 7629
    .local v5, "selectcnt":I
    if-nez v5, :cond_0

    .line 7657
    :goto_0
    return-void

    .line 7633
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v8

    if-ne v5, v8, :cond_1

    .line 7634
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7635
    .local v7, "threadIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7636
    new-instance v8, Lcom/android/mms/fragmentstyle/ConversationListFragment$DeleteThreadListener;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-direct {v8, v7, v9, p0}, Lcom/android/mms/fragmentstyle/ConversationListFragment$DeleteThreadListener;-><init>(Ljava/util/Collection;Lcom/android/mms/data/Conversation$ConversationQueryHandler;Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/android/mms/fragmentstyle/ConversationListFragment$DeleteThreadListener;->deleteConversation()V

    goto :goto_0

    .line 7641
    .end local v7    # "threadIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    :cond_1
    new-array v3, v5, [Lcom/android/mms/ui/MessageItem;

    .line 7642
    .local v3, "messageItems":[Lcom/android/mms/ui/MessageItem;
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7643
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 7644
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;

    .line 7645
    .local v4, "msginfo":Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;
    iget-object v8, v4, Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    aput-object v8, v3, v1

    .line 7646
    iget-wide v8, v4, Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;->mMsgId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 7643
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7650
    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    .line 7654
    .end local v4    # "msginfo":Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->showDelProgressDialog(IIZ)V

    .line 7655
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct {v0, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;[Lcom/android/mms/ui/MessageItem;)V

    .line 7656
    .local v0, "delListener":Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->delMessages(Z)V

    goto :goto_0
.end method

.method private final dismissDelProgress()V
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1788
    :goto_0
    return-void

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1786
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1787
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private drawAttachViewAndSubject(Z)V
    .locals 2
    .param p1, "showSubjectEditor"    # Z

    .prologue
    .line 5655
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;)Z

    .line 5659
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 5660
    return-void

    .line 5659
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawBottomPanel()V
    .locals 3

    .prologue
    .line 5612
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetCounter()V

    .line 5614
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5616
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/view/MmsRichContainer;->showSlideShowOnly()V

    .line 5644
    :cond_0
    :goto_0
    return-void

    .line 5625
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5627
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/view/MmsRichContainer;->showSmsEditStatus()V

    .line 5630
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5633
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v1}, Lcom/android/mms/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5634
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v1, :cond_3

    .line 5635
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v1, v0}, Lcom/android/mms/view/EditTextEx;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 5637
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v2}, Lcom/android/mms/view/EditTextEx;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/view/EditTextEx;->setSelection(I)V

    goto :goto_0

    .line 5639
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/mms/view/EditTextEx;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5641
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5642
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/mms/view/EditTextEx;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    .line 1656
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1657
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1661
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1663
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 1665
    :cond_0
    return-void

    .line 1659
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    const/4 v3, 0x0

    .line 1696
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    .line 1697
    .local v0, "newWorkingMessage":Lcom/android/mms/data/WorkingMessage;
    if-nez v0, :cond_1

    .line 1717
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1704
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1705
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 1707
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->drawAttachViewAndSubject(Z)V

    .line 1712
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1714
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1715
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    goto :goto_0
.end method

.method private editSlideshow()V
    .locals 4

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$3;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const v3, 0x7f0f0064

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 649
    return-void
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    const/4 v6, 0x0

    .line 1675
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v2

    .line 1676
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    .line 1677
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1678
    const-wide/16 v4, -0x2

    invoke-static {v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V

    .line 1681
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1683
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1684
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v6, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1687
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 1688
    return-void

    .line 1681
    .end local v0    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private exitComposeMessageActivity(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "exit"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x1

    .line 3883
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3884
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3903
    :goto_0
    return-void

    .line 3888
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3892
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    if-nez v0, :cond_1

    .line 3893
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3898
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mms/MmsApp;->setmIsNeedDelDraft(Z)V

    .line 3902
    :goto_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3895
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "content://mms/forward-drafts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->sending_msg_id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->discard(Landroid/net/Uri;)V

    goto :goto_1

    .line 3900
    :cond_2
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    goto :goto_2
.end method

.method private forwardMms(Lcom/android/mms/ui/MessageItem;)V
    .locals 12
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1850
    .local v10, "time1":J
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v7

    .line 1852
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "exit_on_sent"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1853
    const-string v0, "forwarded_message"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1854
    const-string v0, "conversation_last_imsi"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mImsi:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1855
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    const-string v0, "sms_body"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1896
    :goto_0
    const-string v0, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v7, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1897
    const/16 v0, 0x71

    invoke-virtual {p0, v7, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1899
    const-string v0, "forwardmsg"

    const-string v1, "forwardMessage all"

    invoke-static {v0, v1, v10, v11}, Lcom/android/mms/ui/MessageUtils;->logfunccostTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1900
    :goto_1
    return-void

    .line 1858
    :cond_0
    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->isAtttachMentexsit:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFlymeMms()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->fileLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->isFileExsite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1864
    :cond_1
    const v0, 0x7f0f01d2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    goto :goto_1

    .line 1872
    :cond_2
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_3

    .line 1873
    const v0, 0x7f0f0180

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    goto :goto_1

    .line 1882
    :cond_3
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1883
    .local v8, "subject":Ljava/lang/String;
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1886
    :cond_4
    const-string v0, "copy_pdu_uri"

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1887
    const-string v0, "mmsprotocl"

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageProtocol()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1888
    const-string v0, "subject"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private forwardSelectedMessages(Ljava/util/HashMap;Z)V
    .locals 9
    .param p2, "isFinishMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "mSelected":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;>;"
    const/4 v8, 0x0

    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1796
    .local v0, "forwardMsg":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 1797
    .local v5, "selectcnt":I
    if-nez v5, :cond_1

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1801
    :cond_1
    new-array v3, v5, [Lcom/android/mms/ui/MessageItem;

    .line 1804
    .local v3, "messageItem":[Lcom/android/mms/ui/MessageItem;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sortSelectMsg(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    .line 1805
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 1806
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;

    iget-object v4, v6, Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1807
    .local v4, "msgItem":Lcom/android/mms/ui/MessageItem;
    if-eqz v4, :cond_0

    .line 1810
    aput-object v4, v3, v1

    .line 1823
    add-int/lit8 v6, v5, -0x1

    if-ne v1, v6, :cond_2

    .line 1824
    iget-object v6, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1826
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1830
    .end local v4    # "msgItem":Lcom/android/mms/ui/MessageItem;
    :cond_3
    if-eqz p2, :cond_4

    .line 1831
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1832
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->finishMultiChoice()V

    .line 1835
    :cond_4
    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    aget-object v6, v3, v8

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v7, "mms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1837
    aget-object v6, v3, v8

    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMms(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 1839
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardSms(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private forwardSms(Ljava/lang/String;)V
    .locals 5
    .param p1, "forwardMsg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1986
    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1988
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "exit_on_sent"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1989
    const-string v1, "forwarded_message"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1990
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1992
    const-string v1, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1993
    const/16 v1, 0x71

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1994
    return-void
.end method

.method private getAssociationId(J)J
    .locals 11
    .param p1, "msgId"    # J

    .prologue
    .line 8945
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 8946
    const-wide/16 v8, -0x1

    .line 8969
    :cond_0
    :goto_0
    return-wide v8

    .line 8949
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8950
    .local v4, "selection":Ljava/lang/String;
    const-wide/16 v8, -0x1

    .line 8951
    .local v8, "association_id":J
    const/4 v7, 0x0

    .line 8954
    .local v7, "ass_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->ASSOCIATION_ID:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 8956
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 8965
    :cond_2
    if-eqz v7, :cond_0

    .line 8966
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 8959
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8960
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 8965
    if-eqz v7, :cond_0

    .line 8966
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 8962
    :catch_0
    move-exception v10

    .line 8963
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-static {p0, v10}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8965
    if-eqz v7, :cond_0

    .line 8966
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 8965
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 8966
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getBody(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 7471
    if-nez p1, :cond_1

    .line 7487
    :cond_0
    :goto_0
    return-object v6

    .line 7474
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 7475
    .local v5, "urlStr":Ljava/lang/String;
    const-string v7, "?"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7478
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 7479
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 7480
    .local v4, "params":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 7481
    .local v3, "p":Ljava/lang/String;
    const-string v7, "body="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7483
    const/4 v7, 0x5

    :try_start_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 7484
    :catch_0
    move-exception v7

    .line 7480
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getCurrentActionBarHeight()I
    .locals 1

    .prologue
    .line 10312
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/util/LayoutUtil;->getActionBarHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/mms/util/LayoutUtil;->getHighActionBarHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getCustomeNotRadioOffSimCountChangedListener()Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;
    .locals 2

    .prologue
    .line 10304
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeNotRadioOffSimCountChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    if-nez v0, :cond_0

    .line 10305
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeNotRadioOffSimCountChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    .line 10307
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeNotRadioOffSimCountChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    return-object v0
.end method

.method private getCustomeSelectedSlotIdChangedListener()Lcom/android/mms/ui/ComposeMessageActivity$CustomeSelectedSlotIdChangedListener;
    .locals 2

    .prologue
    .line 10002
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeSelectedSlotIdChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeSelectedSlotIdChangedListener;

    if-nez v0, :cond_0

    .line 10003
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$CustomeSelectedSlotIdChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$CustomeSelectedSlotIdChangedListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeSelectedSlotIdChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeSelectedSlotIdChangedListener;

    .line 10005
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeSelectedSlotIdChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeSelectedSlotIdChangedListener;

    return-object v0
.end method

.method private getCustomeUseableSimCountChangedListener()Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;
    .locals 2

    .prologue
    .line 10297
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeUseableSimCountChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    if-nez v0, :cond_0

    .line 10298
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeUseableSimCountChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    .line 10300
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeUseableSimCountChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    return-object v0
.end method

.method private getDix(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 9297
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 6796
    if-eqz p1, :cond_1

    .line 6797
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6799
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 6801
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6802
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 6805
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6809
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-wide v0

    .line 6805
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6809
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 6805
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private final getModeCallBack()Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;
    .locals 2

    .prologue
    .line 9849
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiCallback:Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

    if-nez v0, :cond_0

    .line 9850
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiCallback:Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

    .line 9852
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiCallback:Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

    return-object v0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 2163
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2164
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    if-nez v0, :cond_0

    .line 2165
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 2167
    :cond_0
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 2169
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    goto :goto_0
.end method

.method private getResendSlotId(I)I
    .locals 3
    .param p1, "defaultSlotId"    # I

    .prologue
    .line 9956
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResendSlotId DualSimMessageUtils.CURRENT_NOT_RADIO_OFF_SIM_COUNT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/util/DualSimMessageUtils;->CURRENT_NOT_RADIO_OFF_SIM_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaultSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSelectedSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9958
    sget v0, Lcom/android/mms/util/DualSimMessageUtils;->CURRENT_NOT_RADIO_OFF_SIM_COUNT:I

    if-nez v0, :cond_0

    .line 9963
    .end local p1    # "defaultSlotId":I
    :goto_0
    return p1

    .line 9961
    .restart local p1    # "defaultSlotId":I
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->selectSlotId()Z

    .line 9962
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResendSlotId mSelectedSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9963
    iget p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    goto :goto_0
.end method

.method public static final getVersionFromAbility(I)I
    .locals 1
    .param p0, "ability"    # I

    .prologue
    .line 8455
    invoke-static {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasSmsAbility(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasMmsAbility(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8456
    const/4 v0, 0x1

    .line 8460
    :goto_0
    return v0

    .line 8457
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasSmsAbility(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8458
    const/4 v0, 0x0

    goto :goto_0

    .line 8460
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private goToConversationList()V
    .locals 2

    .prologue
    .line 3919
    invoke-super {p0}, Lcom/android/mms/MmsBaseActivity;->finish()V

    .line 3920
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3921
    return-void
.end method

.method private handleAddAttachmentError(II)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "mediaTypeStringId"    # I

    .prologue
    .line 5245
    if-nez p1, :cond_0

    .line 5294
    :goto_0
    return-void

    .line 5248
    :cond_0
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAddAttachmentError(), error is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5250
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->clearShareByFlymeMsgExtra()V

    .line 5252
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$46;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/mms/ui/ComposeMessageActivity$46;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private handleForwardedMessage()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8983
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 8987
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    if-nez v6, :cond_0

    .line 9010
    :goto_0
    return v4

    .line 8990
    :cond_0
    const-string v6, "copy_pdu_uri"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8992
    const-string v6, "copy_pdu_uri"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 8993
    .local v0, "copyUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-static {p0, v0, v6, v5}, Lcom/android/mms/data/WorkingMessage;->loadForward(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Lcom/android/mms/data/WorkingMessage;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 8994
    const-string v6, "mmsprotocl"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 8995
    .local v2, "mmsProtocl":I
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->getWorkingMessageProtocl(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->setSlideShowProtocl(I)V

    .line 8996
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v7, "subject"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 8997
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/android/mms/ui/ComposeMessageActivity$SendMmsRunnable;

    invoke-direct {v6, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$SendMmsRunnable;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Intent;)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 9008
    .end local v0    # "copyUri":Landroid/net/Uri;
    .end local v2    # "mmsProtocl":I
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    move v4, v5

    .line 9010
    goto :goto_0

    .line 8998
    :cond_1
    const-string v6, "msg_uri"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9000
    const-string v6, "msg_uri"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 9001
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {p0, v3}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 9002
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v7, "subject"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 9004
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v6, "sms_body"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private handleSendIntent()Z
    .locals 19

    .prologue
    .line 5479
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 5480
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 5481
    .local v11, "extras":Landroid/os/Bundle;
    const-string v2, "com.android.contacts.extra.SHARED_BY_CONTACT"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSharedByContact:Z

    .line 5482
    if-nez v11, :cond_0

    .line 5483
    const/4 v2, 0x0

    .line 5541
    :goto_0
    return v2

    .line 5485
    :cond_0
    invoke-virtual {v13}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    .line 5486
    .local v14, "mimeType":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 5487
    .local v9, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5488
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5489
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    .line 5491
    .local v17, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->clearMmsDraftText()V

    .line 5492
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$50;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v14, v1}, Lcom/android/mms/ui/ComposeMessageActivity$50;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x0

    const v5, 0x7f0f0062

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 5500
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 5503
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 5504
    :cond_3
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5507
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->clearMmsDraftText()V

    .line 5508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v16

    .line 5509
    .local v16, "slideShow":Lcom/android/mms/model/SlideshowModel;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 5510
    .local v18, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v10

    .line 5511
    .local v10, "currentSlideCount":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 5512
    .local v12, "importCount":I
    add-int v2, v12, v10

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    .line 5513
    rsub-int/lit8 v2, v10, 0xa

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 5519
    const v2, 0x7f0f0061

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v8

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/MessageUtils;->showToast(Ljava/lang/CharSequence;Landroid/content/Context;IIZII)V

    .line 5529
    :cond_4
    move v15, v12

    .line 5530
    .local v15, "numberToImport":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$51;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v15, v1, v14}, Lcom/android/mms/ui/ComposeMessageActivity$51;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;ILjava/util/ArrayList;Ljava/lang/String;)V

    const/4 v4, 0x0

    const v5, 0x7f0f0062

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 5539
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 5510
    .end local v10    # "currentSlideCount":I
    .end local v12    # "importCount":I
    .end local v15    # "numberToImport":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 5541
    .end local v16    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    .end local v18    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private hasMaskKeyboardFlag(II)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 4300
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final hasMmsAbility(I)Z
    .locals 1
    .param p0, "ability"    # I

    .prologue
    .line 8446
    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasOldEmailAccount()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6295
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isOldFlymeVersion()Z

    move-result v0

    .line 6296
    .local v0, "isOldVersion":Z
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    if-eqz v3, :cond_2

    .line 6298
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v3}, Lcom/android/mms/view/MzContactHeaderWidget;->containsEmail()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 6302
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 6298
    goto :goto_0

    .line 6299
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v3, :cond_4

    .line 6300
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v3}, Lcom/meizu/widget/RecipientEdit;->containsEmail()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 6302
    goto :goto_0
.end method

.method private final hasOtherKeyboardFlag(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 4285
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasMaskKeyboardFlag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasMaskKeyboardFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final hasOtherKeyboardShow(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 4276
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->hasOtherKeyboardFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasRecipient()Z
    .locals 2

    .prologue
    .line 9618
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    .line 9620
    .local v0, "recipientCount":I
    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final hasSmsAbility(I)Z
    .locals 1
    .param p0, "ability"    # I

    .prologue
    .line 8442
    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideAttachmentPop()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 4468
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachGroupShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4469
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBottomDividerVisibility(Z)V

    .line 4470
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

    invoke-virtual {v0, v2}, Lcom/android/mms/view/AttachmentGroupView;->setVisibility(I)V

    .line 4471
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$39;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$39;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/view/AttachmentGroupView;->post(Ljava/lang/Runnable;)Z

    .line 4492
    :cond_0
    :goto_0
    return-void

    .line 4480
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isQuickReplyPopupViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4481
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    invoke-virtual {v0, v2}, Lcom/android/mms/quickreply/QuickReplyView;->setVisibility(I)V

    .line 4482
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBottomDividerVisibility(Z)V

    .line 4483
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$40;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$40;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/quickreply/QuickReplyView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private hideCmaTitle()V
    .locals 2

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    invoke-virtual {v0}, Lcom/android/mms/view/NewConsationTitleFrm;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3667
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/view/NewConsationTitleFrm;->setVisibility(I)V

    .line 3668
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/mms/util/LayoutUtil;->setHighActionBarBlurDrawableForCma(Landroid/app/ActionBar;Landroid/content/Context;)V

    .line 3670
    :cond_0
    return-void
.end method

.method private hideQuickReplyPopupView()V
    .locals 2

    .prologue
    .line 9683
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    if-eqz v0, :cond_0

    .line 9684
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/quickreply/QuickReplyView;->setVisibility(I)V

    .line 9685
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBottomDividerVisibility(Z)V

    .line 9687
    :cond_0
    return-void
.end method

.method private hideRecipientEditor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 3927
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v0, :cond_0

    .line 3928
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RecipientEdit;->setVisibility(I)V

    .line 3929
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit;->removeAll()V

    .line 3930
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/RecipientEdit;->setSipDestChecker(Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;)V

    .line 3934
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/RecipientEdit;->setOnSipStateChangedListener(Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;)V

    .line 3937
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->snsPicView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->snsPicView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 3938
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->snsPicView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3941
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 3942
    return-void
.end method

.method private hideTextCounter()V
    .locals 2

    .prologue
    .line 9863
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9864
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9865
    return-void
.end method

.method private inflaterRefreshView()V
    .locals 1

    .prologue
    .line 9141
    const v0, 0x7f0e003c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaCotent:Landroid/view/ViewGroup;

    .line 9142
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshCmaContentBg()V

    .line 9143
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 6818
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6819
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 6820
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->setIntent(Landroid/content/Intent;)V

    .line 6821
    const-string v7, "recipients"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6823
    .local v4, "recipients":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {v4, v7, v10}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {p0, v7, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6827
    const-string v7, "exit_on_sent"

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    .line 6828
    const-string v7, "forwarded_message"

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    .line 6830
    iget-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v7, :cond_0

    .line 6831
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 6833
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v7, p1}, Lcom/android/mms/data/WorkingMessage;->readStateFromBundle(Landroid/os/Bundle;)V

    .line 6834
    sget-boolean v7, Lcom/android/mms/util/DualSimMessageUtils;->IS_MULTI_SIM_DEVICE:Z

    if-eqz v7, :cond_1

    .line 6835
    const-string v7, "selected_imsi"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->initSelectedSlotId(Ljava/lang/String;)V

    .line 6925
    .end local v4    # "recipients":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 6841
    :cond_2
    const-string v7, "thread_id"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v7, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 6842
    .local v8, "threadId":J
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_5

    .line 6845
    const/4 v7, 0x0

    invoke-static {p0, v8, v9, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6905
    :goto_1
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/text/InputFilter;

    const/4 v11, 0x0

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v13

    invoke-static {v13}, Lcom/android/mms/MmsConfig;->getMaxTextLimit(Z)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/android/mms/view/EditTextEx;->setFilters([Landroid/text/InputFilter;)V

    .line 6908
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 6910
    const-string v7, "exit_on_sent"

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    .line 6911
    const-string v7, "forwarded_message"

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    .line 6912
    iget-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v7, :cond_3

    .line 6913
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 6915
    :cond_3
    const-string v7, "sms_body"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6916
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v10, "sms_body"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 6918
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v10, "subject"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 6921
    sget-boolean v7, Lcom/android/mms/util/DualSimMessageUtils;->IS_MULTI_SIM_DEVICE:Z

    if-eqz v7, :cond_1

    .line 6922
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->initSelectedSlotId(Landroid/content/Intent;)V

    goto :goto_0

    .line 6847
    :cond_5
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 6848
    .local v2, "intentData":Landroid/net/Uri;
    if-eqz v2, :cond_9

    .line 6850
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 6851
    .local v3, "myBundle":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 6852
    .local v6, "strRet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_6

    .line 6854
    const-string v7, "contacts_selected"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 6872
    :cond_6
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v10, "smsto"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    .line 6874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 6875
    .local v5, "start":Ljava/lang/Long;
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6876
    const/4 v7, 0x0

    const-string v10, "Conversation.createNew(this)"

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v7, v10, v12, v13}, Lcom/android/mms/ui/MessageUtils;->logfunccostTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 6877
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedShowKeyboard:Z

    goto/16 :goto_1

    .line 6881
    .end local v5    # "start":Ljava/lang/Long;
    :cond_7
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v10, "smsto"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 6883
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedShowKeyboard:Z

    .line 6885
    :cond_8
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {p0, v2, v7, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6886
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getBody(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 6890
    .end local v3    # "myBundle":Landroid/os/Bundle;
    .end local v6    # "strRet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const-string v7, "address"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6891
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 6893
    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {v0, v7, v10}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {p0, v7, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6900
    :goto_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedShowKeyboard:Z

    goto/16 :goto_1

    .line 6898
    :cond_a
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_2
.end method

.method private initChangeSlotMenu()V
    .locals 2

    .prologue
    .line 9904
    sget-boolean v0, Lcom/android/mms/util/DualSimMessageUtils;->IS_MULTI_SIM_DEVICE:Z

    if-eqz v0, :cond_1

    .line 9905
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 9906
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenuHelper:Lcom/android/mms/view/ChangeSlotViewHelper;

    if-nez v0, :cond_0

    .line 9907
    new-instance v0, Lcom/android/mms/view/ChangeSlotViewHelper;

    invoke-direct {v0}, Lcom/android/mms/view/ChangeSlotViewHelper;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenuHelper:Lcom/android/mms/view/ChangeSlotViewHelper;

    .line 9908
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenuHelper:Lcom/android/mms/view/ChangeSlotViewHelper;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCustomeSelectedSlotIdChangedListener()Lcom/android/mms/ui/ComposeMessageActivity$CustomeSelectedSlotIdChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/view/ChangeSlotViewHelper;->setSelectedSlotIdChangedListener(Lcom/android/mms/view/ChangeSlotViewHelper$SelectedSlotIdChangedListener;)V

    .line 9909
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenuHelper:Lcom/android/mms/view/ChangeSlotViewHelper;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/mms/view/ChangeSlotViewHelper;->initActionMenuItemView(Landroid/content/Context;I)V

    .line 9911
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenu:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenuHelper:Lcom/android/mms/view/ChangeSlotViewHelper;

    invoke-virtual {v1}, Lcom/android/mms/view/ChangeSlotViewHelper;->getActionMenuItemView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 9914
    :cond_1
    return-void
.end method

.method private initContactHeaderWidget()V
    .locals 3

    .prologue
    .line 2468
    const v0, 0x7f0e0037

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MzContactHeaderWidget;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    .line 2469
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v0}, Lcom/android/mms/view/MzContactHeaderWidget;->enablePhotoClickToCall()V

    .line 2470
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MzContactHeaderWidget;->showDetail(Z)V

    .line 2471
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    const v1, 0x7f0f01e5

    const v2, 0x7f0f01e4

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/view/MzContactHeaderWidget;->setFlymeButtonDescriptionResId(II)V

    .line 2472
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$20;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$20;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MzContactHeaderWidget;->setHomeViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 2508
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$21;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$21;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MzContactHeaderWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2523
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$22;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$22;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MzContactHeaderWidget;->setSnsIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2530
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsListPopup(Landroid/view/View;)V

    .line 2532
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$23;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$23;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MzContactHeaderWidget;->setOnSipStateChangedListener(Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;)V

    .line 2548
    return-void
.end method

.method private initFocus()V
    .locals 2

    .prologue
    .line 6932
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    if-nez v1, :cond_1

    .line 6956
    :cond_0
    :goto_0
    return-void

    .line 6946
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v1}, Lcom/android/mms/view/EditTextEx;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6947
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->getAllNumbers()Ljava/util/List;

    move-result-object v0

    .line 6948
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 6949
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->requestFocus()Z

    goto :goto_0
.end method

.method private initMessageList()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 6103
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 6125
    :goto_0
    return-void

    .line 6107
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6108
    .local v7, "highlightString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "group_msg_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgGroupId:Ljava/lang/String;

    .line 6109
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msg_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6110
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msg_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "select_id"

    invoke-virtual {v1, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedId:J

    .line 6115
    :goto_1
    if-nez v7, :cond_2

    move-object v5, v2

    .line 6119
    .local v5, "highlight":Ljava/util/regex/Pattern;
    :goto_2
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isGroupRecipent()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListView;ZLjava/util/regex/Pattern;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 6120
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 6121
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 6122
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6124
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-nez v0, :cond_3

    const/4 v0, 0x4

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_0

    .line 6113
    .end local v5    # "highlight":Ljava/util/regex/Pattern;
    :cond_1
    iput-wide v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedId:J

    goto :goto_1

    .line 6115
    :cond_2
    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    goto :goto_2

    .line 6124
    .restart local v5    # "highlight":Ljava/util/regex/Pattern;
    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private initNewConversationTitle(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 3651
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_1

    .line 3660
    :cond_0
    :goto_0
    return-void

    .line 3653
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3654
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/view/NewConsationTitleFrm;->setVisibility(I)V

    .line 3655
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/mms/util/LayoutUtil;->setHighActionBarBlurDrawableForCma(Landroid/app/ActionBar;Landroid/content/Context;)V

    goto :goto_0

    .line 3657
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/view/NewConsationTitleFrm;->setVisibility(I)V

    .line 3658
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/mms/util/LayoutUtil;->setNormalActionBarBlurDrawableForCma(Landroid/app/ActionBar;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private initRecipientsEditor()V
    .locals 5

    .prologue
    .line 2228
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2407
    :goto_0
    return-void

    .line 2233
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 2235
    .local v1, "recipients":Lcom/android/mms/data/ContactList;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-nez v2, :cond_1

    .line 2236
    const v2, 0x7f0e003d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/RecipientEdit;

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    .line 2237
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit;->setImeOptions(I)V

    .line 2241
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v2, v3}, Lcom/android/mms/view/NewConsationTitleFrm;->setRecipientEdit(Lcom/meizu/widget/RecipientEdit;)V

    .line 2242
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$12;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageActivity$12;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/view/NewConsationTitleFrm;->setFlymeToggle(Lcom/android/mms/view/NewConsationTitleFrm$FlyMeToggle;)V

    .line 2249
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit;->setVisibility(I)V

    .line 2250
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 2251
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$dimen;->mz_recipient_max_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit;->setMaxHeight(I)V

    .line 2253
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit;->setOnKeyPreImeListener(Landroid/widget/EditText$OnKeyPreImeListener;)V

    .line 2256
    const/4 v0, 0x1

    .line 2257
    .local v0, "inputFlag":I
    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/SipMessageManager;->isSipMessageOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2258
    or-int/lit8 v0, v0, 0x2

    .line 2260
    :cond_2
    invoke-static {}, Lcom/android/mms/transaction/sns/SnsHelper;->hasLoginSnsAccount()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2261
    or-int/lit8 v0, v0, 0x4

    .line 2263
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v2, v0}, Lcom/meizu/widget/RecipientEdit;->setInputType(I)V

    .line 2268
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$13;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageActivity$13;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 2279
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2282
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$14;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageActivity$14;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit;->setOnRecipientFirstAddListener(Lcom/meizu/widget/RecipientEdit$OnRecipientFirstAddListener;)V

    .line 2294
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$15;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageActivity$15;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit;->setOnSipStateChangedListener(Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;)V

    .line 2304
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$16;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageActivity$16;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit;->setOnTextChangedListener(Lcom/meizu/widget/RecipientEdit$OnTextChangedListener;)V

    .line 2314
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$17;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageActivity$17;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit;->setOnSingleRecipientAddWhenGroupListener(Lcom/meizu/widget/RecipientEdit$OnSingleRecipientAddWhenGroupListener;)V

    .line 2332
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$18;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageActivity$18;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/RecipientEdit;->setOnRecipientChangedListener(Lcom/meizu/widget/RecipientEdit$OnRecipientChangedListener;)V

    .line 2400
    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/SipMessageManager;->isSipMessageOn()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2402
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v2, p0}, Lcom/meizu/widget/RecipientEdit;->setSipDestChecker(Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;)V

    .line 2404
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->populate(Lcom/android/mms/data/ContactList;)V

    .line 2406
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->initNewConversationTitle(Z)V

    goto/16 :goto_0
.end method

.method private initRecipientsListPopup(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 2551
    new-instance v0, Lcom/android/mms/ui/RecipientsListPopup;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsListPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    .line 2552
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/RecipientsListPopup;->setAnchorView(Landroid/view/View;)V

    .line 2553
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsListPopup;->setVerticalOffset(I)V

    .line 2554
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsListPopup;->initHeight(Z)V

    .line 2555
    return-void
.end method

.method private initRecordAndClearSpace()V
    .locals 4

    .prologue
    .line 9596
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->editSpace:Landroid/view/View;

    .line 9597
    invoke-static {}, Lcom/android/mms/util/ServiceNumberHelper;->isOperatorOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9598
    const v0, 0x7f0e0045

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    .line 9600
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/util/VoiceRecorder;->getInstance()Lcom/android/mms/util/VoiceRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    .line 9601
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecordCallback:Lcom/android/mms/util/VoiceRecorder$RecordCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/util/VoiceRecorder;->refreshVoiceRecorder(Landroid/content/Context;Lcom/android/mms/view/EditTextEx;Lcom/android/mms/util/VoiceRecorder$RecordCallback;)V

    .line 9602
    return-void
.end method

.method private initResourceRefs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5801
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->inflaterRefreshView()V

    .line 5804
    const v0, 0x7f0e0039

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/NewConsationTitleFrm;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    .line 5806
    const v0, 0x7f0e003e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 5807
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setCacheColorHint(I)V

    .line 5809
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5810
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v1, 0x7f0c002b

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getDix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setDividerHeight(I)V

    .line 5811
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setHeaderDividersEnabled(Z)V

    .line 5812
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setFooterDividersEnabled(Z)V

    .line 5816
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiCallback:Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

    .line 5818
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getModeCallBack()Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 5821
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setChoiceMode(I)V

    .line 5822
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mPopupActionModeCallback:Lcom/android/mms/ui/MessageListView$PopupActionModeCallback;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setPopupActionModeCallback(Lcom/android/mms/ui/MessageListView$PopupActionModeCallback;)V

    .line 5823
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getModeCallBack()Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setItemDragListener(Landroid/widget/AbsListView$OnItemDragListener;)V

    .line 5828
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setClipToPadding(Z)V

    .line 5830
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getPaddingBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshListViewPadding(I)V

    .line 5855
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initContactHeaderWidget()V

    .line 5861
    const v0, 0x7f0e0042

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MmsRichContainer;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    .line 5862
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentEditorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MmsRichContainer;->setHandler(Landroid/os/Handler;)V

    .line 5863
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOnKeyPreImeListener:Landroid/widget/EditText$OnKeyPreImeListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MmsRichContainer;->setOnKeyPreImeListener(Landroid/widget/EditText$OnKeyPreImeListener;)V

    .line 5866
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$55;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$55;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MmsRichContainer;->setOnSizeChangedListener(Lcom/android/mms/view/MmsRichContainer$OnSizeChangedListener;)V

    .line 5883
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$56;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$56;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MmsRichContainer;->setSubjectVisibilityListener(Lcom/android/mms/view/MmsRichContainer$SubjectVisibilityListener;)V

    .line 5891
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/view/MmsRichContainer;->getBodyContent()Lcom/android/mms/view/EditTextEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    .line 5892
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0, p0}, Lcom/android/mms/view/EditTextEx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5893
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5894
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5899
    const v0, 0x7f0e0043

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    .line 5909
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecordAndClearSpace()V

    .line 5911
    const v0, 0x7f0e0041

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->voiceBtn:Landroid/widget/ImageButton;

    .line 5912
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->voiceBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5914
    const v0, 0x7f0e0044

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMsgBtn:Landroid/widget/ImageButton;

    .line 5915
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMsgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5918
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshEditFrmMargin()V

    .line 5919
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshCmaFrmMarginWhenActionmode(Z)V

    .line 5921
    const v0, 0x7f0e0047

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/AttachmentGroupView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

    .line 5922
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOnAttachmentClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/AttachmentGroupView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5924
    const v0, 0x7f0e0046

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomDivider:Landroid/view/View;

    .line 5925
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBottomDividerVisibility(Z)V

    .line 5926
    return-void
.end method

.method private initSelectedSlotId(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 9924
    const-string v0, "isFlymeMms"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9926
    invoke-static {p0}, Lcom/android/mms/util/DualSimMessageUtils;->queryBindImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedImsi:Ljava/lang/String;

    .line 9934
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/util/DualSimMessageUtils;->getSlotIdByImsi(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    .line 9935
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSelectedSlotId mSelectedImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSelectedSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9936
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    if-ne v0, v3, :cond_0

    .line 9937
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->selectSlotId()Z

    .line 9939
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBindImsi()V

    .line 9940
    return-void

    .line 9927
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHasSetSlotIdByShareByFlymeFlag:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isShareByFlymeMsgWithOutReset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHasSetSlotIdByShareByFlymeFlag:Z

    .line 9929
    invoke-static {p0}, Lcom/android/mms/util/DualSimMessageUtils;->queryBindImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedImsi:Ljava/lang/String;

    .line 9930
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSelectedSlotId SetSlotIdByShareByFlymeFlag mSelectedImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9932
    :cond_2
    const-string v0, "conversation_last_imsi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedImsi:Ljava/lang/String;

    goto :goto_0
.end method

.method private initSelectedSlotId(Ljava/lang/String;)V
    .locals 3
    .param p1, "selectedImsi"    # Ljava/lang/String;

    .prologue
    .line 9943
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedImsi:Ljava/lang/String;

    .line 9944
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/util/DualSimMessageUtils;->getSlotIdByImsi(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    .line 9945
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSelectedSlotId selectedImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSelectedImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSelectedSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9946
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9947
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->selectSlotId()Z

    .line 9949
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBindImsi()V

    .line 9950
    return-void

    .line 9943
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/util/DualSimMessageUtils;->getImsiBySlotId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initSelectedSlotIdForDraft()V
    .locals 3

    .prologue
    .line 9985
    invoke-static {}, Lcom/android/mms/util/DualSimMessageUtils;->getNewConversationSlotId()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    .line 9986
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSelectedSlotIdForDraft mSelectedSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9987
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBindImsi()V

    .line 9988
    return-void
.end method

.method private initSelectionBtnForSigleChoiceMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10192
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    if-eqz v0, :cond_0

    .line 10193
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v0}, Lcom/android/mms/view/MzContactHeaderWidget;->getSelectionBtn()Lcom/meizu/common/widget/SelectionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSingleChoiceModeSBtn:Lcom/meizu/common/widget/SelectionButton;

    .line 10194
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSingleChoiceModeSBtn:Lcom/meizu/common/widget/SelectionButton;

    if-eqz v0, :cond_0

    .line 10195
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSingleChoiceModeSBtn:Lcom/meizu/common/widget/SelectionButton;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$80;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$80;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10204
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSingleChoiceModeSBtn:Lcom/meizu/common/widget/SelectionButton;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SelectionButton;->setTotalCount(I)V

    .line 10205
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSingleChoiceModeSBtn:Lcom/meizu/common/widget/SelectionButton;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/SelectionButton;->setCurrentCount(I)V

    .line 10206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v0, v2}, Lcom/android/mms/view/MzContactHeaderWidget;->setSelectionButtonState(Z)V

    .line 10207
    return-void
.end method

.method private isAttachGroupShown()Z
    .locals 1

    .prologue
    .line 9765
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

    invoke-virtual {v0}, Lcom/android/mms/view/AttachmentGroupView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGroupRecipent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2177
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedHiddenPopWindow()Z
    .locals 2

    .prologue
    .line 7512
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v1}, Lcom/android/mms/view/EditTextEx;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7513
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isKeyBoardShow(Landroid/content/Context;)Z

    move-result v0

    .line 7514
    .local v0, "isKeyBoardShow":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsListPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7515
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsListPopup;->dismiss()V

    .line 7516
    const/4 v1, 0x0

    .line 7519
    .end local v0    # "isKeyBoardShow":Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPreparedForSending()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 20
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v8

    .line 21
    .local v8, "recipientCount":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v0

    .line 22
    .local v0, "a":I
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSendMsgUsable()Z

    move-result v1

    .line 23
    .local v1, "b":Z
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->isVoiceRecognizing()Z

    move-result v11

    if-nez v11, :cond_2

    move v2, v9

    .line 24
    .local v2, "c":Z
    :goto_0
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    .line 25
    .local v3, "d":Z
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    .line 26
    .local v4, "e":Z
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v5

    .line 27
    .local v5, "f":Z
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v6

    .line 28
    .local v6, "g":Z
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v7

    .line 29
    .local v7, "h":Z
    const-string v11, "hong_Sending"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "recipientCount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " getRecipientLimit = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isSendMsgUsable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isVoiceRecognizing = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hasAttachment = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hasText = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hasSubject = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isSnsRecipients = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isWorthSaving = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    if-lez v8, :cond_0

    if-gt v8, v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    :cond_0
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    :cond_1
    :goto_1
    return v9

    .end local v2    # "c":Z
    .end local v3    # "d":Z
    .end local v4    # "e":Z
    .end local v5    # "f":Z
    .end local v6    # "g":Z
    .end local v7    # "h":Z
    :cond_2
    move v2, v10

    .line 23
    goto/16 :goto_0

    .restart local v2    # "c":Z
    .restart local v3    # "d":Z
    .restart local v4    # "e":Z
    .restart local v5    # "f":Z
    .restart local v6    # "g":Z
    .restart local v7    # "h":Z
    :cond_3
    move v9, v10

    .line 30
    goto :goto_1
.end method


.method private isQuickReplyPopupViewShown()Z
    .locals 1

    .prologue
    .line 9690
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    invoke-virtual {v0}, Lcom/android/mms/quickreply/QuickReplyView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecipientsEditorVisible()Z
    .locals 1

    .prologue
    .line 3962
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isShareByFlymeMsg()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5455
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5456
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v3, "shareByFlymeMsg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5463
    :cond_0
    :goto_0
    return v2

    .line 5458
    :cond_1
    const-string v3, "shareByFlymeMsg"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 5459
    .local v1, "isFromFlymeMsgAct":Z
    if-eqz v1, :cond_0

    .line 5460
    const-string v3, "shareByFlymeMsg"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5461
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private final isShareByFlymeMsgWithOutReset()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 10276
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 10277
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "shareByFlymeMsg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10280
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "shareByFlymeMsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method private final isSlideshowHasFile()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5443
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-nez v2, :cond_1

    .line 5448
    :cond_0
    :goto_0
    return v1

    .line 5444
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 5445
    .local v0, "slideShow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5446
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasFile()Z

    move-result v1

    goto :goto_0
.end method

.method private isSubjectEditorVisible()Z
    .locals 1

    .prologue
    .line 3967
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDraft()Z
    .locals 4

    .prologue
    .line 6135
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6136
    const-string v0, "Mms/compose"

    const-string v1, "CMA.loadDraft: called with non-empty working message, bail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6137
    const/4 v0, 0x0

    .line 6167
    :goto_0
    return v0

    .line 6140
    :cond_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6141
    const-string v0, "CMA.loadDraft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6144
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$59;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$59;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iget-wide v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->sending_msg_id:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;J)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 6162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->sending_msg_id:J

    .line 6167
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 7
    .param p0, "logMsg"    # Ljava/lang/String;

    .prologue
    .line 610
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 611
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 612
    .local v4, "tid":J
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 613
    .local v2, "stack":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "methodName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 616
    const-string v3, "Mms/compose"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method private makeForwardMmsUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 26
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9056
    const/16 v25, 0x0

    .line 9057
    .local v25, "uri":Landroid/net/Uri;
    const-string v4, "subject"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 9058
    .local v22, "subject":Ljava/lang/String;
    const-string v4, "mmsprotocl"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 9060
    .local v8, "mmsProtocl":I
    :try_start_0
    new-instance v3, Lcom/meizu/android/mms/pdu/MzSendReq;

    invoke-direct {v3}, Lcom/meizu/android/mms/pdu/MzSendReq;-><init>()V

    .line 9061
    .local v3, "sendReq":Lcom/meizu/android/mms/pdu/MzSendReq;
    new-instance v4, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/meizu/android/mms/pdu/MzEncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/meizu/android/mms/pdu/MzSendReq;->setSubject(Lcom/meizu/android/mms/pdu/MzEncodedStringValue;)V

    .line 9063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 9064
    .local v23, "time2":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->makeCopy()Lcom/meizu/android/mms/pdu/MzPduBody;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/android/mms/pdu/MzSendReq;->setBody(Lcom/meizu/android/mms/pdu/MzPduBody;)V

    .line 9065
    const-string v4, "forwardmsg"

    const-string v5, "makeCopy"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->logfunccostTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 9068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 9069
    .local v24, "time3":Ljava/lang/Long;
    invoke-static/range {p0 .. p0}, Lcom/meizu/android/mms/pdu/MzPduPersister;->getPduPersister(Landroid/content/Context;)Lcom/meizu/android/mms/pdu/MzPduPersister;

    move-result-object v2

    .line 9071
    .local v2, "persister":Lcom/meizu/android/mms/pdu/MzPduPersister;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v18

    .line 9072
    .local v18, "forwardSlideshow":Lcom/android/mms/model/SlideshowModel;
    const/4 v9, 0x0

    .line 9073
    .local v9, "values":Landroid/content/ContentValues;
    const/4 v4, 0x1

    if-ne v8, v4, :cond_1

    .line 9074
    new-instance v9, Landroid/content/ContentValues;

    .end local v9    # "values":Landroid/content/ContentValues;
    const/4 v4, 0x3

    invoke-direct {v9, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 9075
    .restart local v9    # "values":Landroid/content/ContentValues;
    const-string v4, "protocol"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9077
    const-string v4, "slideshow_description"

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->getDescriptionForMms()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9078
    const-string v4, "file_link"

    const-string v5, ""

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9097
    :cond_0
    :goto_0
    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/meizu/android/mms/pdu/MzPduPersister;->persist(Lcom/meizu/android/mms/pdu/MzGenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 9100
    const-string v4, "forwardmsg"

    const-string v5, "persist"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->logfunccostTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 9102
    invoke-static/range {v25 .. v25}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->sending_msg_id:J

    .line 9104
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/MmsApp;->setmIsNeedDelDraft(Z)V

    move-object/from16 v4, v25

    .line 9116
    .end local v2    # "persister":Lcom/meizu/android/mms/pdu/MzPduPersister;
    .end local v3    # "sendReq":Lcom/meizu/android/mms/pdu/MzSendReq;
    .end local v9    # "values":Landroid/content/ContentValues;
    .end local v18    # "forwardSlideshow":Lcom/android/mms/model/SlideshowModel;
    .end local v23    # "time2":Ljava/lang/Long;
    .end local v24    # "time3":Ljava/lang/Long;
    :goto_1
    return-object v4

    .line 9081
    .restart local v2    # "persister":Lcom/meizu/android/mms/pdu/MzPduPersister;
    .restart local v3    # "sendReq":Lcom/meizu/android/mms/pdu/MzSendReq;
    .restart local v9    # "values":Landroid/content/ContentValues;
    .restart local v18    # "forwardSlideshow":Lcom/android/mms/model/SlideshowModel;
    .restart local v23    # "time2":Ljava/lang/Long;
    .restart local v24    # "time3":Ljava/lang/Long;
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    .end local v9    # "values":Landroid/content/ContentValues;
    const/4 v4, 0x4

    invoke-direct {v9, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 9082
    .restart local v9    # "values":Landroid/content/ContentValues;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->getRightSize()J

    move-result-wide v20

    .line 9083
    .local v20, "size":J
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_2

    const-string v4, "m_size"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9084
    :cond_2
    const-string v4, "protocol"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9086
    const-string v4, "slideshow_description"

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->getDescriptionForMms()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9087
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->getAttachmentUri()Landroid/net/Uri;

    move-result-object v19

    .line 9088
    .local v19, "path":Landroid/net/Uri;
    if-eqz v19, :cond_0

    .line 9089
    const-string v4, "file_link"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9105
    .end local v2    # "persister":Lcom/meizu/android/mms/pdu/MzPduPersister;
    .end local v3    # "sendReq":Lcom/meizu/android/mms/pdu/MzSendReq;
    .end local v9    # "values":Landroid/content/ContentValues;
    .end local v18    # "forwardSlideshow":Lcom/android/mms/model/SlideshowModel;
    .end local v19    # "path":Landroid/net/Uri;
    .end local v20    # "size":J
    .end local v23    # "time2":Ljava/lang/Long;
    .end local v24    # "time3":Ljava/lang/Long;
    :catch_0
    move-exception v17

    .line 9108
    .local v17, "e":Lcom/google/android/mms/MmsException;
    const v10, 0x7f0f005e

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v16

    move-object/from16 v11, p0

    invoke-static/range {v10 .. v16}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    .line 9114
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private needHideCounter()Z
    .locals 1

    .prologue
    .line 9858
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onKeyboardMenuItemSelected()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 10102
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPhoneOperator:Z

    if-nez v0, :cond_1

    .line 10103
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBottomDividerVisibility(Z)V

    .line 10104
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showOrHideSoftKeyboard(Z)Z

    .line 10105
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/view/AttachmentGroupView;->setVisibility(I)V

    .line 10106
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentAdd:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10107
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10132
    :cond_0
    :goto_0
    return-void

    .line 10109
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanelCurrentMode:I

    if-ne v0, v2, :cond_2

    .line 10110
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->showBottomPanel(I)V

    .line 10111
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$77;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$77;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10120
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanelCurrentMode:I

    if-ne v0, v1, :cond_0

    .line 10121
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputVisibleChangeByKeyboard:Z

    .line 10122
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->showOrHideSoftKeyboard(Z)Z

    .line 10123
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$78;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$78;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/view/EditTextEx;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private onKeyboardStateChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3770
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->setEnabled(Z)V

    .line 3771
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-nez v0, :cond_2

    .line 3772
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v0, :cond_0

    .line 3773
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/RecipientEdit;->setFocusableInTouchMode(Z)V

    .line 3775
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 3776
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3778
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0, v2}, Lcom/android/mms/view/EditTextEx;->setFocusableInTouchMode(Z)V

    .line 3779
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const v1, 0x7f0f0261

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->setHint(I)V

    .line 3803
    :goto_0
    return-void

    .line 3780
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    if-eqz v0, :cond_6

    .line 3781
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v0, :cond_3

    .line 3782
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/RecipientEdit;->setFocusableInTouchMode(Z)V

    .line 3784
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 3785
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3787
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0, v3}, Lcom/android/mms/view/EditTextEx;->setFocusableInTouchMode(Z)V

    .line 3788
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPhoneOperator:Z

    if-eqz v0, :cond_5

    .line 3789
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const v1, 0x7f0f0040

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->setHint(I)V

    goto :goto_0

    .line 3791
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const v1, 0x7f0f003f

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->setHint(I)V

    goto :goto_0

    .line 3794
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v0, :cond_7

    .line 3795
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/RecipientEdit;->setFocusable(Z)V

    .line 3797
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    .line 3798
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3800
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0, v2}, Lcom/android/mms/view/EditTextEx;->setFocusable(Z)V

    .line 3801
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const v1, 0x7f0f0043

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->setHint(I)V

    goto :goto_0
.end method

.method private populate(Lcom/android/mms/data/ContactList;)V
    .locals 4
    .param p1, "list"    # Lcom/android/mms/data/ContactList;

    .prologue
    .line 2436
    if-eqz p1, :cond_1

    .line 2437
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2439
    .local v2, "myList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 2440
    .local v0, "c":Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2443
    .end local v0    # "c":Lcom/android/mms/data/Contact;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2444
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v3, v2}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/util/ArrayList;)I

    .line 2447
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "myList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private reSendSmsMessageItem(Ljava/util/ArrayList;Z)V
    .locals 13
    .param p2, "useSipWay"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 8790
    .local p1, "MsgItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MessageItem;>;"
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reSendSmsMessageItem usesipway is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8791
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 8792
    .local v10, "messageNum":I
    const/4 v0, 0x1

    if-ge v10, v0, :cond_0

    .line 8836
    :goto_0
    return-void

    .line 8796
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSlotId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResendSlotId(I)I

    move-result v12

    .line 8797
    .local v12, "selectedSlotId":I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSlotId()I

    move-result v7

    .line 8798
    .local v7, "defaultSlotId":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_6

    .line 8799
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 8800
    .local v2, "uri":Landroid/net/Uri;
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v11

    .line 8801
    .local v11, "ret":Z
    if-eqz v11, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v0, v1, :cond_2

    .line 8803
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 8804
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "status"

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8805
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8809
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSnsSms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8798
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 8807
    :cond_2
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSmsSent: failed to move message "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " to sent folder"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 8812
    :cond_3
    if-nez p2, :cond_5

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFlymeSms()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8813
    const-string v0, "Mms/compose"

    const-string v1, "handleSmsSent:  move message to normal "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8814
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/telephony/MzTelephony$SmsExt;->changeMessageProtocol(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 8819
    :cond_4
    :goto_4
    if-eq v12, v7, :cond_1

    .line 8820
    invoke-direct {p0, v12, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSlotIdAndImsi(ILandroid/net/Uri;)V

    goto :goto_3

    .line 8815
    :cond_5
    if-eqz p2, :cond_4

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFlymeSms()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8816
    const-string v0, "Mms/compose"

    const-string v1, "handleSmsSent:  move message to sip "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8817
    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/telephony/MzTelephony$SmsExt;->changeMessageProtocol(Landroid/content/Context;Landroid/net/Uri;II)Z

    goto :goto_4

    .line 8824
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v11    # "ret":Z
    :cond_6
    const/4 v6, 0x0

    .line 8825
    .local v6, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8826
    const-string v6, "com.android.mms.transaction.SEND_SNS_MESSAGE"

    .line 8832
    :goto_5
    new-instance v9, Landroid/content/Intent;

    const/4 v0, 0x0

    const-class v1, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v9, v6, v0, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 8833
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "Mms/compose"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reSendSmsMessageItem -> slotId : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSlotId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8834
    const-string v0, "sim_id"

    invoke-virtual {v9, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8835
    invoke-virtual {p0, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 8827
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_7
    if-eqz p2, :cond_8

    .line 8828
    const-string v6, "com.android.mms.transaction.SEND_SIP_MESSAGE"

    goto :goto_5

    .line 8830
    :cond_8
    const-string v6, "com.android.mms.transaction.SEND_MESSAGE"

    goto :goto_5
.end method

.method private recipientCount()I
    .locals 2

    .prologue
    .line 6237
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6238
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v0

    .line 6242
    .local v0, "recipientCount":I
    :goto_0
    return v0

    .line 6240
    .end local v0    # "recipientCount":I
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    .restart local v0    # "recipientCount":I
    goto :goto_0
.end method

.method private recipientHasInputFlag(II)Z
    .locals 1
    .param p1, "singleRecipientType"    # I
    .param p2, "inputFlg"    # I

    .prologue
    .line 1480
    and-int v0, p1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshActionBar()V
    .locals 1

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2836
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setupActionBar()V

    .line 2846
    :cond_0
    return-void
.end method

.method private refreshActionModeWhenorientionChange()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x13

    const/4 v4, -0x1

    .line 3723
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    if-nez v2, :cond_0

    .line 3724
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setupActionBar()V

    .line 3726
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-nez v2, :cond_2

    .line 3754
    :cond_1
    :goto_0
    return-void

    .line 3727
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3730
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3732
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getActionMode()Landroid/view/ActionMode;

    move-result-object v1

    .line 3733
    .local v1, "actionMode":Landroid/view/ActionMode;
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v2, :cond_3

    .line 3735
    if-eqz v1, :cond_1

    .line 3736
    invoke-virtual {v1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    if-eq v2, v3, :cond_1

    .line 3737
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 3738
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 3741
    :cond_3
    if-eqz v1, :cond_1

    .line 3742
    invoke-virtual {v1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    if-ne v2, v3, :cond_1

    .line 3743
    invoke-virtual {v1, v6}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 3744
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v4, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 3749
    .end local v1    # "actionMode":Landroid/view/ActionMode;
    :cond_4
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    if-eq v2, v3, :cond_1

    .line 3750
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3751
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v4, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

.method private refreshAttachmentEditorMargin()V
    .locals 2

    .prologue
    .line 9247
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    if-eqz v0, :cond_0

    .line 9248
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 9249
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MmsRichContainer;->refreshAttachmentEditorMargin(I)V

    .line 9254
    :cond_0
    :goto_0
    return-void

    .line 9251
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MmsRichContainer;->refreshAttachmentEditorMargin(I)V

    goto :goto_0
.end method

.method private refreshCmaContentBg()V
    .locals 4

    .prologue
    .line 9151
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaCotent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 9158
    :cond_0
    :goto_0
    return-void

    .line 9152
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9153
    .local v0, "cmaBg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 9154
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 9155
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 9157
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaCotent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private refreshCmaFrmMarginWhenActionmode(Z)V
    .locals 4
    .param p1, "isDestroyMode"    # Z

    .prologue
    const v3, 0x7f0c0026

    const/4 v2, 0x0

    .line 7721
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaCotent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->noSmartBar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7740
    :cond_0
    :goto_0
    return-void

    .line 7722
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaCotent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 7723
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p1, :cond_4

    .line 7724
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 7725
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7726
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$dimen;->mz_action_bar_default_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 7739
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaCotent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7728
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 7731
    :cond_4
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v1, :cond_5

    .line 7732
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 7733
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$dimen;->mz_action_bar_default_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 7735
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$dimen;->mz_action_button_min_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 7736
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method private refreshEditFrmMargin()V
    .locals 2

    .prologue
    .line 9236
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    if-nez v1, :cond_0

    .line 9244
    :goto_0
    return-void

    .line 9237
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/view/MmsRichContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9238
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->voiceBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 9239
    const v1, 0x7f0c016b

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getDix(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 9243
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v1, v0}, Lcom/android/mms/view/MmsRichContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9241
    :cond_1
    const v1, 0x7f0c016a

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getDix(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private refreshListViewPadding(I)V
    .locals 4
    .param p1, "bottom"    # I

    .prologue
    .line 9842
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getPaddingLeft()I

    move-result v1

    invoke-static {}, Lcom/android/mms/util/LayoutUtil;->getHighActionBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/mms/ui/MessageListView;->setPadding(IIII)V

    .line 9846
    return-void
.end method

.method private refreshMmsRichContainerStatu(Z)V
    .locals 3
    .param p1, "orientionChange"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 9192
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9193
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->setEditTextSingleLine(Z)V

    .line 9195
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setMmsRichContainerLandMaxHeight(Z)V

    .line 9202
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 9203
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->requireMms()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v0, 0x8

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9206
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9208
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$71;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$71;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->post(Ljava/lang/Runnable;)Z

    .line 9216
    :cond_3
    return-void

    .line 9197
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setEditTextSingleLine(Z)V

    .line 9199
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->setMmsRichContainerLandMaxHeight(Z)V

    goto :goto_0
.end method

.method private refreshPopWindowWhenOrientionChange()V
    .locals 2

    .prologue
    .line 9177
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsListPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9178
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedHiddenPopWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9179
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsListPopup;->reShow(Z)V

    .line 9182
    :cond_0
    return-void
.end method

.method private refreshUIWhenChangeThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3060
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->finishMultiChoice()V

    .line 3061
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    if-eqz v0, :cond_0

    .line 3062
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsListPopup;->dismiss()V

    .line 3064
    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->setFlyMeStatus(ZI)V

    .line 3065
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->dismissDelProgress()V

    .line 3066
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3067
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3068
    :cond_1
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 3069
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3070
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3071
    :cond_2
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3072
    return-void
.end method

.method private refreshViewWhenOrientionChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 9262
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshCmaContentBg()V

    .line 9264
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 9265
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    const v3, 0x7f0c01b9

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getDix(I)I

    move-result v3

    const v4, 0x7f0c01ba

    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getDix(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 9268
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 9269
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9270
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 9271
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9274
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setListViewPadding()V

    .line 9276
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshEditFrmMargin()V

    .line 9277
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshMmsRichContainerStatu(Z)V

    .line 9278
    return-void
.end method

.method private registerBindImsiContentObserver()V
    .locals 4

    .prologue
    .line 10244
    sget-boolean v0, Lcom/android/mms/util/DualSimMessageUtils;->IS_MULTI_SIM_DEVICE:Z

    if-eqz v0, :cond_1

    .line 10245
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBindImsiContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 10246
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$81;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$81;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBindImsiContentObserver:Landroid/database/ContentObserver;

    .line 10254
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/SipMessageManager;->QUERY_BIND_IMSI_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBindImsiContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 10256
    :cond_1
    return-void
.end method

.method private registerSdBroadcast()V
    .locals 3

    .prologue
    .line 8587
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8589
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8591
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8593
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8595
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8596
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 8597
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSipOrSdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8598
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v2, :cond_0

    .line 8599
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isSdMounted()Z

    move-result v1

    .line 8600
    .local v1, "isSdMounted":Z
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/MessageListView;->setSdcardMount(Z)Z

    .line 8602
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    invoke-virtual {v2, v1}, Lcom/android/mms/util/VoiceRecorder;->setSdcardMount(Z)Z

    .line 8604
    .end local v1    # "isSdMounted":Z
    :cond_0
    return-void
.end method

.method private registerSipBroadcast()V
    .locals 2

    .prologue
    .line 8577
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8578
    .local v0, "it":Landroid/content/IntentFilter;
    const-string v1, "com.android.mms.sip.dest_check_popup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8579
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 8580
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSipOrSdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8581
    return-void
.end method

.method private removeRecipientsListeners()V
    .locals 0

    .prologue
    .line 7444
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 7445
    return-void
.end method

.method private requireMms()Z
    .locals 1

    .prologue
    .line 9868
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetActionBarHeight(Landroid/app/ActionBar;)V
    .locals 2
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 2852
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2853
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$dimen;->mz_action_bar_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTopBarHeight(I)V

    .line 2859
    :goto_0
    return-void

    .line 2856
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTopBarHeight(I)V

    goto :goto_0
.end method

.method private resetConfiguration(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3758
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    .line 3759
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v0, v2

    .line 3760
    .local v0, "isLandscape":Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eq v1, v0, :cond_2

    .line 3761
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    .line 3764
    :goto_2
    return v2

    .end local v0    # "isLandscape":Z
    :cond_0
    move v1, v3

    .line 3758
    goto :goto_0

    :cond_1
    move v0, v3

    .line 3759
    goto :goto_1

    .restart local v0    # "isLandscape":Z
    :cond_2
    move v2, v3

    .line 3764
    goto :goto_2
.end method

.method private resetCounter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 932
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0}, Lcom/android/mms/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0}, Lcom/android/mms/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;III)V

    .line 942
    :goto_0
    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private resetMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6649
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6650
    const-string v0, "resetMessage"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6655
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/view/MmsRichContainer;->hideView()V

    .line 6660
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 6663
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0}, Lcom/android/mms/view/EditTextEx;->requestFocus()Z

    .line 6669
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6672
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0}, Lcom/android/mms/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 6674
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 6676
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 6677
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6679
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideCmaTitle()V

    .line 6680
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    .line 6681
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 6684
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 6687
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6691
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 6692
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideKeyboard()V

    .line 6695
    :cond_1
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 6696
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 6697
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 6698
    return-void
.end method

.method private resetMessageAfterRecord()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6705
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6706
    const-string v0, "resetMessageAfterRecord"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6733
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6738
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 6740
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideCmaTitle()V

    .line 6741
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    .line 6742
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 6745
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 6752
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 6753
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideKeyboard()V

    .line 6756
    :cond_1
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 6757
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 6758
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 6759
    return-void
.end method

.method private sanityCheckConversation()V
    .locals 2

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eq v0, v1, :cond_0

    .line 3200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComposeMessageActivity: mWorkingMessage.mConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MISMATCH!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 3205
    :cond_0
    return-void
.end method

.method private saveDraft(Z)V
    .locals 7
    .param p1, "isStopping"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 6178
    const-string v0, "Mms:app"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6179
    const-string v0, "saveDraft"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6184
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6218
    :cond_1
    :goto_0
    return-void

    .line 6188
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHasFowardSended:Z

    if-nez v0, :cond_1

    .line 6193
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 6196
    :cond_3
    const-string v0, "Mms:app"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6197
    const-string v0, "not worth saving, discard WorkingMessage and bail"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6199
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_0

    .line 6204
    :cond_5
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    if-nez v0, :cond_1

    .line 6205
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-static {v0}, Lcom/android/mms/util/DualSimMessageUtils;->setConversationDraftImsi(I)V

    .line 6206
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)V

    .line 6207
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    if-eqz v0, :cond_1

    .line 6210
    const v0, 0x7f0f005f

    invoke-static {}, Lcom/android/mms/util/LayoutUtil;->getActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    goto :goto_0
.end method

.method private saveFlymeMmsAttachment(Lcom/android/mms/ui/MessageItem;)Z
    .locals 8
    .param p1, "mMessageItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 812
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->saveTempMsg:Lcom/android/mms/ui/MessageItem;

    .line 813
    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->tempUri:Landroid/net/Uri;

    .line 814
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMediaDataUri()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->tempDataUri:Landroid/net/Uri;

    .line 815
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFileLink()Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, "fileLink":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFileLink:Ljava/lang/String;

    .line 818
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->tempUri:Landroid/net/Uri;

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 850
    :goto_0
    return v5

    .line 820
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 821
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_3

    .line 822
    :cond_2
    const v5, 0x7f0f01d2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v7

    invoke-static {p0, v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->showToast(Landroid/content/Context;III)V

    move v5, v6

    .line 823
    goto :goto_0

    .line 825
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "currentDiretory":Ljava/lang/String;
    const-string v6, "/sdcard/Download/FMessage/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 828
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getFileSavePath()Ljava/lang/String;

    move-result-object v0

    .line 831
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFileLink:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->getUriFromFileLink(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 834
    .local v4, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 835
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x80000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 837
    const-string v6, "com.meizu.action.SAVE_FILE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    const-string v6, "init_directory"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string v6, "SAVEATTACHMENT"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 842
    const-string v6, "android.intent.extra.TITLE"

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentFileName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    const-string v6, "title"

    const v7, 0x7f0f0118

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const/16 v6, 0x72

    invoke-virtual {p0, v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private selectSlotId()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 9883
    const-string v1, "Mms/compose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compose selectSlotId CURRENT_NOT_RADIO_OFF_SIM_COUNT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/util/DualSimMessageUtils;->CURRENT_NOT_RADIO_OFF_SIM_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",CURRENT_USEABLE_SIM_COUNT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/util/DualSimMessageUtils;->CURRENT_USEABLE_SIM_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9885
    invoke-static {}, Lcom/android/mms/util/DualSimMessageUtils;->hasNoUseableSim()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9886
    iput v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    .line 9894
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->DISABLE_SEND_BTN_WHEN_NO_SIM_CARD:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    if-le v1, v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 9887
    :cond_3
    invoke-static {}, Lcom/android/mms/util/DualSimMessageUtils;->hasTwoUseableSim()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9888
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    if-gt v1, v4, :cond_0

    .line 9889
    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    goto :goto_0

    .line 9892
    :cond_4
    invoke-static {}, Lcom/android/mms/util/DualSimMessageUtils;->getNotRadioOffSlotId()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    goto :goto_0
.end method

.method private sendMessage(Z)V
    .locals 6
    .param p1, "bCheckEcmMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 6338
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(ZLandroid/net/Uri;ZZZ)V

    .line 6339
    return-void
.end method

.method private sendMessage(ZLandroid/net/Uri;ZZZ)V
    .locals 32
    .param p1, "bCheckEcmMode"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isRecord"    # Z
    .param p4, "isLocation"    # Z
    .param p5, "isSendDirectSaveDraft"    # Z

    .prologue
    .line 6350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->isFileExsite()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6352
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isSdMounted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6353
    const/4 v4, -0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showTipForSended(I)V

    .line 6533
    :cond_0
    :goto_0
    return-void

    .line 6355
    :cond_1
    const/4 v4, -0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showTipForSended(I)V

    goto :goto_0

    .line 6360
    :cond_2
    if-eqz p1, :cond_3

    .line 6362
    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 6363
    .local v18, "inEcm":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6365
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v5, 0x6b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6369
    :catch_0
    move-exception v16

    .line 6371
    .local v16, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "Mms/compose"

    const-string v5, "Cannot find EmergencyCallbackModeExitDialog"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6376
    .end local v16    # "e":Landroid/content/ActivityNotFoundException;
    .end local v18    # "inEcm":Ljava/lang/String;
    :cond_3
    const-wide/16 v30, 0x0

    .line 6377
    .local v30, "threadid":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    if-nez v4, :cond_14

    .line 6379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v23

    .line 6380
    .local v23, "sendingRecipients":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Ljava/lang/String;

    move-result-object v27

    .line 6382
    .local v27, "workingRecipients":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ComposeMessageActivity.sendMessage recipients in window: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" differ from recipients from conv: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" and working recipients: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 6390
    .end local v27    # "workingRecipients":Ljava/lang/String;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sanityCheckConversation()V

    .line 6396
    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/SipMessageManager;->isSipMessageOn()Z

    move-result v20

    .line 6397
    .local v20, "isSipMessageOpen":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeSmsOpen()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v20, :cond_5

    const/16 v25, 0x1

    .line 6398
    .local v25, "sipModeSms":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v20, :cond_6

    const/16 v24, 0x1

    .line 6399
    .local v24, "sipModeMms":Z
    :goto_2
    const-string v4, "Mms/compose"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send Message -> sipModeSms : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sipModeMms : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSipMessageOpen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6401
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v21

    .line 6403
    .local v21, "isSnsRecipient":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v26

    .line 6404
    .local v26, "slideShow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v26, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v17, 0x1

    .line 6406
    .local v17, "hasSlideshow":Z
    :goto_3
    const-wide/16 v28, 0x0

    .line 6408
    .local v28, "slideshowSize":J
    if-nez p3, :cond_c

    if-eqz v17, :cond_c

    .line 6410
    if-eqz v21, :cond_8

    const/4 v4, 0x2

    :goto_4
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/mms/model/SlideshowModel;->setSlideShowProtocl(I)V

    .line 6411
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/SlideshowModel;->getRightSize()J

    move-result-wide v28

    .line 6413
    if-eqz v21, :cond_a

    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSnsMessageSize()J

    move-result-wide v4

    cmp-long v4, v28, v4

    if-lez v4, :cond_a

    .line 6416
    const v4, 0x7f0f0207

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v10

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v10}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 6433
    :catch_1
    move-exception v16

    .line 6434
    .local v16, "e":Lcom/android/mms/ExceedMessageSizeException;
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->toastShowFlymeSent(ZI)V

    goto/16 :goto_0

    .line 6397
    .end local v16    # "e":Lcom/android/mms/ExceedMessageSizeException;
    .end local v17    # "hasSlideshow":Z
    .end local v21    # "isSnsRecipient":Z
    .end local v24    # "sipModeMms":Z
    .end local v25    # "sipModeSms":Z
    .end local v26    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    .end local v28    # "slideshowSize":J
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 6398
    .restart local v25    # "sipModeSms":Z
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 6404
    .restart local v21    # "isSnsRecipient":Z
    .restart local v24    # "sipModeMms":Z
    .restart local v26    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    .line 6410
    .restart local v17    # "hasSlideshow":Z
    .restart local v28    # "slideshowSize":J
    :cond_8
    if-eqz v24, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 6424
    :cond_a
    :try_start_2
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/SlideshowModel;->canSendAsMms()I

    move-result v19

    .line 6425
    .local v19, "isCanSendAsMms":I
    if-eqz v19, :cond_b

    .line 6426
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->toastShowFlymeSent(ZI)V

    goto/16 :goto_0

    .line 6428
    :cond_b
    if-nez v21, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasOldEmailAccount()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 6429
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->toastShowFlymeSent(ZI)V
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 6439
    .end local v19    # "isCanSendAsMms":I
    :cond_c
    if-eqz v21, :cond_d

    .line 6440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipientsSipState(I)V

    .line 6447
    :goto_5
    if-eqz p3, :cond_16

    .line 6449
    if-nez v24, :cond_11

    if-nez v21, :cond_11

    .line 6451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/mms/util/VoiceRecorder;->deleteCancelFile(Landroid/net/Uri;)V

    .line 6452
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->toastShowFlymeSent(ZI)V

    goto/16 :goto_0

    .line 6441
    :cond_d
    if-eqz v17, :cond_f

    .line 6442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v24, :cond_e

    const/4 v4, 0x1

    :goto_6
    invoke-virtual {v5, v4}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipientsSipState(I)V

    goto :goto_5

    :cond_e
    const/4 v4, 0x0

    goto :goto_6

    .line 6444
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v25, :cond_10

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v5, v4}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipientsSipState(I)V

    goto :goto_5

    :cond_10
    const/4 v4, 0x0

    goto :goto_7

    .line 6454
    :cond_11
    if-eqz v21, :cond_12

    .line 6456
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/util/SnsMessageManager;->canSendSnsMessage(Landroid/content/Context;Z)I

    move-result v22

    .line 6457
    .local v22, "result":I
    if-eqz v22, :cond_12

    .line 6460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/mms/util/VoiceRecorder;->deleteCancelFile(Landroid/net/Uri;)V

    .line 6461
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1, v4}, Lcom/android/mms/util/SnsMessageManager$SnsErrorConstants;->getErrorMsg(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->toastErrMsgForSent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6466
    .end local v22    # "result":I
    :cond_12
    if-eqz v20, :cond_13

    if-nez v21, :cond_13

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedNotifyContactHeaderWidget:Z

    .line 6467
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    if-eqz v21, :cond_15

    const/4 v4, 0x2

    :goto_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    move-object/from16 v0, p2

    invoke-virtual {v5, v6, v0, v4, v8}, Lcom/android/mms/data/WorkingMessage;->sendTalk(Ljava/lang/String;Landroid/net/Uri;II)J

    move-result-wide v30

    .line 6527
    :goto_9
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 6528
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 6530
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z

    .line 6532
    .end local v17    # "hasSlideshow":Z
    .end local v20    # "isSipMessageOpen":Z
    .end local v21    # "isSnsRecipient":Z
    .end local v23    # "sendingRecipients":Ljava/lang/String;
    .end local v24    # "sipModeMms":Z
    .end local v25    # "sipModeSms":Z
    .end local v26    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    .end local v28    # "slideshowSize":J
    :cond_14
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->afterSend(J)V

    goto/16 :goto_0

    .line 6467
    .restart local v17    # "hasSlideshow":Z
    .restart local v20    # "isSipMessageOpen":Z
    .restart local v21    # "isSnsRecipient":Z
    .restart local v23    # "sendingRecipients":Ljava/lang/String;
    .restart local v24    # "sipModeMms":Z
    .restart local v25    # "sipModeSms":Z
    .restart local v26    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    .restart local v28    # "slideshowSize":J
    :cond_15
    const/4 v4, 0x1

    goto :goto_8

    .line 6468
    :cond_16
    if-eqz v25, :cond_17

    const-wide/32 v4, 0xa00000

    cmp-long v4, v28, v4

    if-lez v4, :cond_17

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isMobileNetworkisActive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 6470
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6471
    .local v15, "dialogBilder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0f01d5

    invoke-virtual {v15, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0075

    new-instance v6, Lcom/android/mms/ui/ComposeMessageActivity$60;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v6, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$60;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;ZZ)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0f0076

    new-instance v6, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v8}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 6487
    .end local v15    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    :cond_17
    if-eqz p4, :cond_1b

    .line 6488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mLocation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mShortAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6491
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->canSendLocationAsMms()Z

    move-result v4

    if-eqz v4, :cond_18

    if-nez p2, :cond_19

    .line 6492
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mShortAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/mms/data/WorkingMessage;->sendLocation(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v30

    goto/16 :goto_9

    .line 6494
    :cond_19
    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mShortAddress:Ljava/lang/String;

    aput-object v5, v7, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mLocation:Ljava/lang/String;

    aput-object v5, v7, v4

    .line 6495
    .local v7, "locationInfos":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v8, 0x2

    :goto_a
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/mms/data/WorkingMessage;->sendLocation(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;II)J

    move-result-wide v30

    .line 6497
    goto/16 :goto_9

    .line 6495
    :cond_1a
    const/4 v8, 0x1

    goto :goto_a

    .line 6498
    .end local v7    # "locationInfos":[Ljava/lang/String;
    :cond_1b
    if-eqz p5, :cond_1c

    .line 6499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mChooseQuickPhrase:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/mms/data/WorkingMessage;->sendLocation(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v30

    goto/16 :goto_9

    .line 6501
    :cond_1c
    if-eqz v21, :cond_1e

    .line 6503
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/util/SnsMessageManager;->canSendSnsMessage(Landroid/content/Context;Z)I

    move-result v22

    .line 6504
    .restart local v22    # "result":I
    if-eqz v22, :cond_1d

    .line 6505
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1, v4}, Lcom/android/mms/util/SnsMessageManager$SnsErrorConstants;->getErrorMsg(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->toastErrMsgForSent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6509
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getTextLength()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->getMaxTextLimit(Z)I

    move-result v5

    if-le v4, v5, :cond_1e

    .line 6512
    const v4, 0x7f0f020f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->getMaxTextLimit(Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v14

    move-object/from16 v9, p0

    invoke-static/range {v8 .. v14}, Lcom/android/mms/ui/MessageUtils;->showToast(Ljava/lang/CharSequence;Landroid/content/Context;IIZII)V

    goto/16 :goto_0

    .line 6523
    .end local v22    # "result":I
    :cond_1e
    if-eqz v20, :cond_1f

    if-nez v21, :cond_1f

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedNotifyContactHeaderWidget:Z

    .line 6524
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v5}, Lcom/android/mms/view/MmsRichContainer;->isTimerShown()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->setIsTimer(Z)V

    .line 6525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;I)J

    move-result-wide v30

    goto/16 :goto_9
.end method

.method private setFlyMeStatus(ZI)V
    .locals 3
    .param p1, "current"    # Z
    .param p2, "flymeVersion"    # I

    .prologue
    .line 2671
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isFlyMeOpen:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFlymeVersion:I

    if-ne v0, p2, :cond_0

    .line 2685
    :goto_0
    return-void

    .line 2673
    :cond_0
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFlymeVersion:I

    .line 2674
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isFlyMeOpen:Z

    .line 2675
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFlymeVersion:I

    .line 2678
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$24;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$24;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2684
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlyMeStatus(), mFlyMeOpen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isFlyMeOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setImeShowingStatus(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4366
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    if-eqz v2, :cond_1

    .line 4376
    :cond_0
    :goto_0
    return-void

    .line 4367
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-eq v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    if-eqz v2, :cond_2

    .line 4368
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v2, v0, v0}, Lcom/android/mms/view/MmsRichContainer;->selectedAttachment(ZI)V

    .line 4369
    :cond_2
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    .line 4371
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshMmsRichContainerStatu(Z)V

    .line 4372
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    if-eqz v2, :cond_4

    .line 4373
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyBoardShowFlags:I

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->hasOtherKeyboardFlag(I)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Lcom/android/mms/view/MmsRichContainer;->showOrHiddenTextCusor(Z)V

    .line 4374
    :cond_4
    if-eqz p1, :cond_0

    .line 4375
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->finishSingleChoice(Z)V

    goto :goto_0
.end method

.method private setKeyboardPanelStatus(I)V
    .locals 5
    .param p1, "keyBoardFlags"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 4326
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    if-eqz v1, :cond_2

    .line 4332
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->voiceBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4334
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->voiceBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->hasMaskKeyboardFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0200b3

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4337
    :cond_1
    const/4 v0, 0x1

    .line 4338
    .local v0, "needTextCusor":Z
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->hasMaskKeyboardFlag(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4340
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const-string v3, "com.meizu.input.cover.SMILE"

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "weibo"

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/android/mms/view/EditTextEx;->showIMECoverView(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4343
    const/4 v0, 0x0

    .line 4352
    :goto_2
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyBoardShowFlags:I

    .line 4353
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    if-eqz v1, :cond_2

    .line 4354
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v1, v0}, Lcom/android/mms/view/MmsRichContainer;->showOrHiddenTextCusor(Z)V

    .line 4356
    .end local v0    # "needTextCusor":Z
    :cond_2
    return-void

    .line 4334
    :cond_3
    const v1, 0x7f0200b2

    goto :goto_0

    .line 4340
    .restart local v0    # "needTextCusor":Z
    :cond_4
    const-string v1, "mms"

    goto :goto_1

    .line 4344
    :cond_5
    invoke-direct {p0, p1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->hasMaskKeyboardFlag(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4346
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const-string v2, "com.meizu.input.cover.VOICE"

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/view/EditTextEx;->showIMECoverView(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4347
    const/4 v0, 0x0

    goto :goto_2

    .line 4350
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v1, v3, v3}, Lcom/android/mms/view/EditTextEx;->showIMECoverView(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method private setListViewPadding()V
    .locals 0

    .prologue
    .line 9294
    return-void
.end method

.method private setMmsRichContainerLandMaxHeight(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 9876
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/view/MmsRichContainer;->setLandMaxHeight(ZZ)V

    .line 9877
    return-void
.end method

.method private setScreenOrientation()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 10341
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAutoChangeScreen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10342
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->setRequestedOrientation(I)V

    .line 10346
    :cond_0
    :goto_0
    return-void

    .line 10343
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 10344
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setSipStatuWhenOffline(Ljava/lang/String;Lcom/meizu/widget/RecipientStateInfo$SipState;I)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "sipret"    # Lcom/meizu/widget/RecipientStateInfo$SipState;
    .param p3, "version"    # I

    .prologue
    const/4 v0, 0x1

    .line 8493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8494
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8495
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v1, :cond_1

    .line 8496
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1, p1, p2, p3}, Lcom/meizu/widget/RecipientEdit;->setSipDestState(Ljava/lang/String;Lcom/meizu/widget/RecipientStateInfo$SipState;I)V

    .line 8506
    :goto_0
    return v0

    .line 8500
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v1}, Lcom/android/mms/view/MzContactHeaderWidget;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 8501
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCurrentSlotOnBind:Z

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/mms/view/MzContactHeaderWidget;->setSipDestState(Ljava/lang/String;Lcom/meizu/widget/RecipientStateInfo$SipState;IZ)V

    goto :goto_0

    .line 8506
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2806
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2807
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    .line 2809
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    const v2, 0x7f0e0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->snsPicView:Landroid/view/View;

    .line 2810
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->snsPicView:Landroid/view/View;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$25;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$25;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2823
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setActionModeHeaderHidden(Z)V

    .line 2825
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2826
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->actionFrm:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x13

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 2829
    return-void
.end method

.method private showAttachGroupView(Z)V
    .locals 4
    .param p1, "bShow"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9769
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachGroupShown()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 9770
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/mms/view/AttachmentGroupView;->setVisibility(I)V

    .line 9771
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9772
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentAdd:Landroid/view/MenuItem;

    if-eqz p1, :cond_3

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9773
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBottomDividerVisibility(Z)V

    .line 9775
    :cond_0
    return-void

    .line 9770
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move v0, v1

    .line 9771
    goto :goto_1

    :cond_3
    move v1, v2

    .line 9772
    goto :goto_2
.end method

.method private showBottomPanel(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 10042
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanelCurrentMode:I

    if-eq p1, v0, :cond_1

    .line 10043
    packed-switch p1, :pswitch_data_0

    .line 10094
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanelCurrentMode:I

    .line 10096
    :cond_1
    return-void

    .line 10045
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    if-eqz v0, :cond_2

    .line 10046
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    invoke-virtual {v0, v2}, Lcom/android/mms/smartmessage/SmartMessageViewContainer;->setVisibility(I)V

    .line 10048
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->editSpace:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10049
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 10050
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10052
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachGroupShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10053
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showAttachGroupView(Z)V

    goto :goto_0

    .line 10060
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->editSpace:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10062
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0}, Lcom/android/mms/view/EditTextEx;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10063
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0}, Lcom/android/mms/view/EditTextEx;->requestFocus()Z

    .line 10065
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    if-eqz v0, :cond_5

    .line 10066
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    invoke-virtual {v0, v1}, Lcom/android/mms/smartmessage/SmartMessageViewContainer;->setVisibility(I)V

    .line 10068
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 10073
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$76;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$76;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10088
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->editSpace:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10089
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPhoneOperator:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    if-eqz v0, :cond_0

    .line 10090
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    invoke-virtual {v0, v1}, Lcom/android/mms/smartmessage/SmartMessageViewContainer;->setVisibility(I)V

    goto :goto_0

    .line 10043
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showChooseStateUI()V
    .locals 1

    .prologue
    .line 4458
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    if-eqz v0, :cond_0

    .line 4459
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initSelectionBtnForSigleChoiceMode()V

    .line 4462
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideKeyboard()V

    .line 4464
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideAttachmentPop()V

    .line 4465
    return-void
.end method

.method private showEditSpace()V
    .locals 0

    .prologue
    .line 4510
    return-void
.end method

.method private final showErrorDailogForRecipients(I)V
    .locals 7
    .param p1, "singleRecipientType"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1487
    const v0, 0x7f0f01b3

    .line 1488
    .local v0, "msgResId":I
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientHasInputFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientHasInputFlag(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1490
    const v0, 0x7f0f0204

    .line 1494
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    .line 1499
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1500
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1, p1}, Lcom/meizu/widget/RecipientEdit;->removeSingleRecipientWhenGroup(I)V

    .line 1501
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v1}, Lcom/meizu/widget/RecipientEdit;->requestFocus()Z

    .line 1503
    :cond_1
    return-void

    .line 1491
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientHasInputFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1492
    const v0, 0x7f0f0205

    goto :goto_0
.end method

.method private showMessageDetails(Lcom/android/mms/ui/MessageItem;)Z
    .locals 6
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 882
    if-nez p1, :cond_1

    .line 898
    :cond_0
    :goto_0
    return v2

    .line 885
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/mms/ui/MessageListAdapter;->getCursorForItem(Lcom/android/mms/ui/MessageItem;)Landroid/database/Cursor;

    move-result-object v0

    .line 886
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 889
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 890
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v2, Lcom/android/mms/adapter/TwoTextViewListAdapter;

    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:J

    invoke-static {p0, v0, v4, v5}, Lcom/android/mms/ui/SpecialMessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Lcom/android/mms/adapter/TwoTextViewListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 893
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f00ad

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v2, v3

    .line 898
    goto :goto_0
.end method

.method private showOrHideSoftKeyboard(Z)Z
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4307
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4308
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v1

    .line 4309
    .local v1, "isNowShow":Z
    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 4310
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v3}, Lcom/android/mms/view/EditTextEx;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v2

    .line 4314
    :cond_0
    :goto_0
    return v2

    .line 4311
    :cond_1
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 4312
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    goto :goto_0
.end method

.method private showPrepareForwardProgress(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1763
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1764
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    .line 1765
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1766
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1767
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1768
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1769
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$9;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1777
    return-void
.end method

.method private showSubjectEditor(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2869
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 2873
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_3

    .line 2876
    if-nez p1, :cond_2

    .line 2910
    :cond_1
    :goto_0
    return-void

    .line 2879
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/view/MmsRichContainer;->getSubjectText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 2884
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPhoneOperator:Z

    if-eqz v0, :cond_5

    .line 2885
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2887
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2888
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0, v2}, Lcom/android/mms/view/MmsRichContainer;->setSubjectVisibility(Z)V

    .line 2889
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 2894
    :cond_5
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    .line 2895
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSubjectEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2896
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2897
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2898
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MmsRichContainer;->setSubjectVisibility(Z)V

    .line 2899
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2909
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshAttachmentEditorMargin()V

    goto :goto_0

    .line 2901
    :cond_8
    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 2902
    sget-boolean v0, Lcom/android/mms/MmsApp;->CMCC:Z

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSubjectEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2903
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2904
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2905
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0, v2}, Lcom/android/mms/view/MmsRichContainer;->setSubjectVisibility(Z)V

    .line 2906
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1
.end method

.method private showTipForSended(I)V
    .locals 7
    .param p1, "error"    # I

    .prologue
    const v4, 0x7f0f01d7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4166
    sparse-switch p1, :sswitch_data_0

    .line 4213
    :goto_0
    return-void

    .line 4169
    :sswitch_0
    const v0, 0x7f0f01ac

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    goto :goto_0

    .line 4179
    :sswitch_1
    const v0, 0x7f0f01ab

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    goto :goto_0

    .line 4190
    :sswitch_2
    const/4 v0, -0x1

    .line 4191
    .local v0, "strRes":I
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4192
    const v0, 0x7f0f0048

    .line 4198
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    goto :goto_0

    .line 4193
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4194
    const v0, 0x7f0f0207

    goto :goto_1

    .line 4196
    :cond_1
    const v0, 0x7f0f0047

    goto :goto_1

    .line 4207
    .end local v0    # "strRes":I
    :sswitch_3
    const v1, 0x7f0f01d8

    invoke-virtual {p0, v4, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->showSendFileErrorDialog(II)V

    goto :goto_0

    .line 4210
    :sswitch_4
    invoke-virtual {p0, v4, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showSendFileErrorDialog(II)V

    goto :goto_0

    .line 4166
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_4
        -0x5 -> :sswitch_3
        -0x2 -> :sswitch_2
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
    .end sparse-switch
.end method

.method private smoothScrollToEnd(ZI)V
    .locals 12
    .param p1, "force"    # Z
    .param p2, "listSizeChange"    # I

    .prologue
    .line 7002
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v3

    .line 7003
    .local v3, "lastItemVisible":I
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .line 7004
    .local v1, "lastItemInList":I
    if-ltz v3, :cond_0

    if-gez v1, :cond_3

    .line 7005
    :cond_0
    const-string v8, "Mms:app"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7006
    const-string v8, "Mms/compose"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smoothScrollToEnd: lastItemVisible="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lastItemInList="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mMsgListView not ready"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7010
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->setSelectionToBottom()V

    .line 7094
    :cond_2
    :goto_0
    return-void

    .line 7014
    :cond_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7015
    .local v0, "lastChildVisible":Landroid/view/View;
    const/4 v4, 0x0

    .line 7016
    .local v4, "lastVisibleItemBottom":I
    const/4 v5, 0x0

    .line 7017
    .local v5, "lastVisibleItemHeight":I
    if-eqz v0, :cond_4

    .line 7018
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 7019
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 7022
    :cond_4
    const-string v8, "Mms:app"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 7023
    const-string v8, "Mms/compose"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smoothScrollToEnd newPosition: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mLastSmoothScrollPosition: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastSmoothScrollPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " first: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lastItemVisible: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lastVisibleItemBottom: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lastVisibleItemBottom + listSizeChange: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int v10, v4, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mMsgListView.getHeight() - mMsgListView.getPaddingBottom(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " listSizeChange: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7046
    :cond_5
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v6

    .line 7047
    .local v6, "listHeight":I
    if-le v5, v6, :cond_a

    const/4 v2, 0x1

    .line 7048
    .local v2, "lastItemTooTall":Z
    :goto_1
    if-nez p1, :cond_7

    if-nez p2, :cond_6

    iget v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastSmoothScrollPosition:I

    if-eq v1, v8, :cond_b

    :cond_6
    add-int v8, v4, p2

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListView;->getPaddingBottom()I

    move-result v9

    sub-int v9, v6, v9

    if-gt v8, v9, :cond_b

    :cond_7
    const/4 v7, 0x1

    .line 7053
    .local v7, "willScroll":Z
    :goto_2
    if-nez v7, :cond_8

    if-eqz v2, :cond_2

    if-ne v1, v3, :cond_2

    .line 7054
    :cond_8
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0x258

    if-le v8, v9, :cond_d

    .line 7058
    const-string v8, "Mms:app"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 7059
    const-string v8, "Mms/compose"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keyboard state changed. setSelection="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7061
    :cond_9
    if-eqz v2, :cond_c

    .line 7066
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    sub-int v9, v6, v5

    invoke-virtual {v8, v1, v9}, Lcom/android/mms/ui/MessageListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 7047
    .end local v2    # "lastItemTooTall":Z
    .end local v7    # "willScroll":Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    .line 7048
    .restart local v2    # "lastItemTooTall":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_2

    .line 7068
    .restart local v7    # "willScroll":Z
    :cond_c
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8, v1}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    goto/16 :goto_0

    .line 7070
    :cond_d
    sub-int v8, v1, v3

    const/16 v9, 0x8

    if-le v8, v9, :cond_f

    .line 7072
    const-string v8, "Mms:app"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 7073
    const-string v8, "Mms/compose"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "too many to scroll, setSelection="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7075
    :cond_e
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8, v1}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    goto/16 :goto_0

    .line 7077
    :cond_f
    const-string v8, "Mms:app"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 7078
    const-string v8, "Mms/compose"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smooth scroll to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7081
    :cond_10
    if-eqz v2, :cond_11

    .line 7087
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    sub-int v9, v6, v5

    invoke-virtual {v8, v1, v9}, Lcom/android/mms/ui/MessageListView;->setSelectionFromTop(II)V

    .line 7091
    :goto_3
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastSmoothScrollPosition:I

    goto/16 :goto_0

    .line 7089
    :cond_11
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8, v1}, Lcom/android/mms/ui/MessageListView;->smoothScrollToPosition(I)V

    goto :goto_3
.end method

.method private sortSelectMsg(Ljava/util/HashMap;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7666
    .local p1, "mSelected":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7667
    .local v1, "seliterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7668
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/ui/ComposeMessageActivity$SelectedMsgInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7669
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7671
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 7672
    return-object v0
.end method

.method private startMsgListQuery()V
    .locals 9

    .prologue
    const/16 v8, 0x25e6

    const/4 v6, 0x1

    .line 6040
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v1, :cond_0

    .line 6056
    :goto_0
    return-void

    .line 6043
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v1, v8}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->removeMessages(I)V

    .line 6044
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 6045
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 6047
    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastUpdateTime:Landroid/text/format/Time;

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 6049
    .local v2, "delaytime":J
    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 6050
    const-wide/16 v2, 0x12c

    .line 6054
    :goto_1
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastUpdateTime:Landroid/text/format/Time;

    .line 6055
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v1, v8, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 6052
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method private startMsgListQueryReally(I)V
    .locals 12
    .param p1, "token"    # I

    .prologue
    .line 6067
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 6070
    .local v8, "conversationUri":Landroid/net/Uri;
    if-nez v8, :cond_0

    .line 6071
    const-string v0, "##### startMsgListQuery: conversationUri is null, bail!"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6096
    :goto_0
    return-void

    .line 6075
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    .line 6076
    .local v10, "threadId":J
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMsgListQuery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mConversation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6082
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 6085
    const/4 v0, 0x1

    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "GROUP BY group_msg_id"

    aput-object v1, v6, v0

    .line 6086
    .local v6, "selectionArgs":[Ljava/lang/String;
    const-string v7, "association_id"

    .line 6087
    .local v7, "orderby":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "addPartText"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "is_favorite != 2"

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6093
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "orderby":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 6094
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v9}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private toastConvertInfo(Z)V
    .locals 8
    .param p1, "toMms"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1112
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v1

    if-eqz v1, :cond_0

    const v7, 0x7f0f0206

    .line 1113
    .local v7, "textResId":I
    :goto_0
    if-eqz p1, :cond_1

    const v0, 0x7f0f005a

    .line 1116
    .local v0, "resId":I
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    .line 1118
    return-void

    .line 1112
    .end local v0    # "resId":I
    .end local v7    # "textResId":I
    :cond_0
    const v7, 0x7f0f005b

    goto :goto_0

    .restart local v7    # "textResId":I
    :cond_1
    move v0, v7

    .line 1113
    goto :goto_1
.end method

.method private toastErrMsgForSent(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6326
    if-nez p1, :cond_0

    .line 6335
    :goto_0
    return-void

    .line 6329
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v0, p1

    move-object v1, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(Ljava/lang/CharSequence;Landroid/content/Context;IIZII)V

    goto :goto_0
.end method

.method private toastShowFlymeSent(ZI)V
    .locals 7
    .param p1, "isLowerVersion"    # Z
    .param p2, "reason"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6250
    if-nez p1, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 6252
    :cond_0
    const v0, 0x7f0f01dd

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    .line 6289
    :goto_0
    return-void

    .line 6259
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 6262
    :pswitch_0
    const v0, 0x7f0f01b2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    goto :goto_0

    .line 6271
    :pswitch_1
    const v0, 0x7f0f0047

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    goto :goto_0

    .line 6280
    :pswitch_2
    const v0, 0x7f0f01db

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    goto :goto_0

    .line 6259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private unregisterBindImsiContentObserver()V
    .locals 2

    .prologue
    .line 10259
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBindImsiContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 10260
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBindImsiContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 10262
    :cond_0
    return-void
.end method

.method private upateThreadStatus()V
    .locals 1

    .prologue
    .line 3392
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3393
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 3397
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V

    .line 3398
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 3399
    return-void
.end method

.method private updateActionBarPhoto()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 9528
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9554
    :goto_0
    :pswitch_0
    return-void

    .line 9532
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 9533
    .local v2, "list":Lcom/android/mms/data/ContactList;
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 9550
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02031c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/mms/view/MzContactHeaderWidget;->setContactHeaderImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9538
    :pswitch_1
    invoke-virtual {v2, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 9539
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 9540
    .local v1, "contact":Lcom/android/mms/data/Contact;
    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 9541
    .local v3, "mContactPhoto":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_2

    .line 9543
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getColorIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v6}, Lcom/android/mms/view/MzContactHeaderWidget;->setContactHeaderImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 9545
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    const-string v5, ""

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getColorIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/mms/view/MzContactHeaderWidget;->setContactHeaderImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateBindImsi()V
    .locals 1

    .prologue
    .line 10224
    invoke-static {p0}, Lcom/android/mms/util/DualSimMessageUtils;->queryBindImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBindImsi:Ljava/lang/String;

    .line 10225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateIsCurrentSlotOnBind(Z)V

    .line 10226
    return-void
.end method

.method private updateBottomDividerVisibility(Z)V
    .locals 2
    .param p1, "needShow"    # Z

    .prologue
    .line 9872
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomDivider:Landroid/view/View;

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9873
    return-void

    .line 9872
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateBottomPanelInputShownChange(Z)V
    .locals 3
    .param p1, "isShowing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 10135
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputVisibleChangeByKeyboard:Z

    if-eqz v0, :cond_1

    .line 10136
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputVisibleChangeByKeyboard:Z

    .line 10179
    :cond_0
    :goto_0
    return-void

    .line 10141
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPhoneOperator:Z

    if-eqz v0, :cond_6

    .line 10142
    if-nez p1, :cond_5

    .line 10143
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    if-eqz v0, :cond_2

    .line 10144
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    invoke-virtual {v0, v2}, Lcom/android/mms/smartmessage/SmartMessageViewContainer;->setVisibility(I)V

    .line 10146
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 10147
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10149
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachGroupShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10150
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showAttachGroupView(Z)V

    .line 10155
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->editSpace:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$79;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$79;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10163
    :cond_5
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showBottomPanel(I)V

    goto :goto_0

    .line 10170
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->editSpace:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10171
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    if-eqz v0, :cond_7

    .line 10172
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/smartmessage/SmartMessageViewContainer;->setVisibility(I)V

    .line 10174
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 10175
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateChangeSlotMenuTitle()V
    .locals 2

    .prologue
    .line 9918
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenuHelper:Lcom/android/mms/view/ChangeSlotViewHelper;

    if-eqz v0, :cond_0

    .line 9919
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenuHelper:Lcom/android/mms/view/ChangeSlotViewHelper;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v0, v1}, Lcom/android/mms/view/ChangeSlotViewHelper;->setChangeSlotMenuTitle(I)V

    .line 9921
    :cond_0
    return-void
.end method

.method private updateComposeTextHint()V
    .locals 3

    .prologue
    const v2, 0x7f0f0041

    .line 2197
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    if-nez v0, :cond_0

    .line 2216
    :goto_0
    return-void

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2199
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2200
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2201
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const v1, 0x7f0f0042

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->setHint(I)V

    goto :goto_0

    .line 2202
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeSmsOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2203
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0, v2}, Lcom/android/mms/view/EditTextEx;->setHint(I)V

    goto :goto_0

    .line 2204
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit;->containsEmail()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2207
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0, v2}, Lcom/android/mms/view/EditTextEx;->setHint(I)V

    goto :goto_0

    .line 2208
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2210
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0, v2}, Lcom/android/mms/view/EditTextEx;->setHint(I)V

    goto :goto_0

    .line 2211
    :cond_5
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPhoneOperator:Z

    if-eqz v0, :cond_6

    .line 2212
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const v1, 0x7f0f0040

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->setHint(I)V

    goto :goto_0

    .line 2214
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const v1, 0x7f0f003f

    invoke-virtual {v0, v1}, Lcom/android/mms/view/EditTextEx;->setHint(I)V

    goto :goto_0
.end method

.method private updateContactHeaderViewStatus(Z)V
    .locals 2
    .param p1, "isDisplay"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2623
    if-eqz p1, :cond_1

    .line 2624
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MzContactHeaderWidget;->setVisibility(I)V

    .line 2625
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v0}, Lcom/android/mms/view/MzContactHeaderWidget;->isSetSipDestChecker()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/SipMessageManager;->isSipMessageOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2627
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v0, p0}, Lcom/android/mms/view/MzContactHeaderWidget;->setSipDestChecker(Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;)V

    .line 2628
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedNotifyContactHeaderWidget:Z

    .line 2629
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v0}, Lcom/android/mms/view/MzContactHeaderWidget;->checkSipDestNumber()V

    .line 2635
    :cond_0
    :goto_0
    return-void

    .line 2632
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MzContactHeaderWidget;->setVisibility(I)V

    .line 2633
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MzContactHeaderWidget;->setSipDestChecker(Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;)V

    goto :goto_0
.end method

.method private updateCounter(Ljava/lang/CharSequence;III)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 953
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1085
    :goto_0
    return-void

    .line 954
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 956
    .local v5, "workingMessage":Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 958
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 986
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isOldFlymeVersion()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 988
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1024
    :cond_2
    invoke-static {p1, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    .line 1032
    .local v2, "params":[I
    aget v1, v2, v8

    .line 1034
    .local v1, "msgCount":I
    const/4 v6, 0x2

    aget v3, v2, v6

    .line 1049
    .local v3, "remainingInCurrentMessage":I
    const/4 v4, 0x0

    .line 1051
    .local v4, "showCounter":Z
    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v6

    if-nez v6, :cond_4

    if-gt v1, v7, :cond_3

    const/16 v6, 0xa

    if-gt v3, v6, :cond_4

    .line 1053
    :cond_3
    const/4 v4, 0x1

    .line 1056
    :cond_4
    if-eqz v4, :cond_6

    .line 1058
    if-le v1, v7, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "counterText":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1058
    .end local v0    # "counterText":Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1065
    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1067
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateFlymeMmsAttachPath(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pathAndName"    # Ljava/lang/String;

    .prologue
    .line 859
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFileLink:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->saveTempMsg:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageItem;->fixSlideshowFileMediaUri(Ljava/lang/String;)V

    .line 865
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/util/PduLoaderManager;->removePdu(Landroid/net/Uri;)V

    .line 866
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/mms/ui/ComposeMessageActivity$8;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "ComposeMessageActivity.updateFlymeMmsAttachPath"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private updateIsCurrentSlotOnBind(Z)V
    .locals 3
    .param p1, "needRefresh"    # Z

    .prologue
    .line 10229
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIsCurrentSlotOnBind mSelectedSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBindImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBindImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10230
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBindImsi:Ljava/lang/String;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-static {v0, v1}, Lcom/android/mms/util/DualSimMessageUtils;->isTheSameImsi(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCurrentSlotOnBind:Z

    .line 10231
    if-eqz p1, :cond_0

    .line 10232
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10233
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCurrentSlotOnBind:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/view/NewConsationTitleFrm;->updateFlymeViewVisibility(Z)V

    .line 10237
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateVoiceBtnAndCounter()V

    .line 10239
    :cond_0
    return-void

    .line 10235
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCurrentSlotOnBind:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MzContactHeaderWidget;->updateFlymeViewVisibility(Z)V

    goto :goto_0
.end method

.method private updateIsFavorite(ILcom/android/mms/ui/MessageItem;I)V
    .locals 8
    .param p1, "favoriteFlag"    # I
    .param p2, "msgItem"    # Lcom/android/mms/ui/MessageItem;
    .param p3, "token"    # I

    .prologue
    const/4 v2, 0x0

    .line 9695
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 9696
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "is_favorite"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9697
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9698
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move v1, p3

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 9707
    :goto_0
    return-void

    .line 9700
    :cond_0
    iget-boolean v0, p2, Lcom/android/mms/ui/MessageItem;->mIsGroupMsg:Z

    if-eqz v0, :cond_1

    .line 9701
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "group_msg_id = ?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v7, p2, Lcom/android/mms/ui/MessageItem;->mMsgGroupId:Ljava/lang/String;

    aput-object v7, v6, v1

    move v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 9704
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    move v1, p3

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateKeyboardStatus(Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;I)V
    .locals 8
    .param p1, "type"    # Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;
    .param p2, "flag"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 4403
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 4404
    .local v1, "ime":Landroid/view/inputmethod/InputMethodManager;
    move v2, p2

    .line 4405
    .local v2, "keyBoardShowFlags":I
    sget-object v4, Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;->enum_Face:Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;

    if-ne p1, v4, :cond_3

    .line 4406
    const/4 v2, 0x2

    .line 4431
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v4}, Lcom/android/mms/view/EditTextEx;->requestFocus()Z

    .line 4433
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->setKeyboardPanelStatus(I)V

    .line 4434
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 4436
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v4}, Lcom/android/mms/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 4437
    .local v0, "etable":Landroid/text/Editable;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v4}, Lcom/android/mms/view/EditTextEx;->getSelectionStart()I

    move-result v3

    .line 4438
    .local v3, "selectStart":I
    if-gez v3, :cond_1

    .line 4439
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 4441
    :cond_1
    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4442
    .end local v0    # "etable":Landroid/text/Editable;
    .end local v3    # "selectStart":I
    :cond_2
    :goto_1
    return-void

    .line 4407
    :cond_3
    sget-object v4, Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;->enum_Voice:Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;

    if-ne p1, v4, :cond_4

    .line 4408
    const/4 v2, 0x4

    goto :goto_0

    .line 4409
    :cond_4
    sget-object v4, Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;->enum_Normal:Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;

    if-ne p1, v4, :cond_5

    .line 4410
    const/4 v2, 0x1

    goto :goto_0

    .line 4411
    :cond_5
    sget-object v4, Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;->enum_Auto:Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;

    if-ne p1, v4, :cond_9

    .line 4412
    if-ne p2, v5, :cond_6

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyBoardShowFlags:I

    if-ne v4, v5, :cond_6

    .line 4413
    const/4 v2, 0x1

    goto :goto_0

    .line 4414
    :cond_6
    if-ne p2, v5, :cond_7

    .line 4415
    const/4 v2, 0x2

    goto :goto_0

    .line 4416
    :cond_7
    if-ne p2, v7, :cond_8

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyBoardShowFlags:I

    if-ne v4, v7, :cond_8

    .line 4417
    const/4 v2, 0x1

    goto :goto_0

    .line 4418
    :cond_8
    if-ne p2, v7, :cond_0

    .line 4419
    const/4 v2, 0x4

    goto :goto_0

    .line 4421
    :cond_9
    sget-object v4, Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;->enum_Close:Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;

    if-ne p1, v4, :cond_0

    .line 4423
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v4

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-eqz v4, :cond_2

    .line 4424
    :cond_a
    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    .line 4425
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->setKeyboardPanelStatus(I)V

    .line 4426
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v4}, Lcom/android/mms/view/EditTextEx;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method

.method private updateSendButtonState()V
    .locals 2

    .prologue
    .line 6768
    const/4 v0, 0x0

    .line 6769
    .local v0, "enable":Z
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6778
    const/4 v0, 0x1

    .line 6790
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMsgBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 6791
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMsgBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 6793
    :cond_1
    return-void
.end method

.method private updateSendFailedNotification()V
    .locals 5

    .prologue
    .line 3406
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 3407
    .local v0, "threadId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 3419
    :goto_0
    return-void

    .line 3412
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$26;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$26;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    const-string v4, "ComposeMessageActivity.updateSendFailedNotification"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private updateSlotIdAndImsi(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "selectedSlotId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 9970
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$74;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$74;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;ILandroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9982
    return-void
.end method

.method private updateThreadIdIfRunning()V
    .locals 2

    .prologue
    .line 7491
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    .line 7496
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V

    .line 7504
    :cond_0
    return-void
.end method

.method private updateTitle(Lcom/android/mms/data/ContactList;)V
    .locals 1
    .param p1, "list"    # Lcom/android/mms/data/ContactList;

    .prologue
    .line 2185
    if-nez p1, :cond_0

    .line 2186
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    .line 2190
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshActionBar()V

    .line 2191
    return-void

    .line 2188
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateVoiceBtnAndCounter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10266
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateVoiceBtn()V

    .line 10268
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->needHideCounter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10269
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0}, Lcom/android/mms/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;III)V

    .line 10271
    :cond_0
    return-void
.end method

.method private viewMmsMessageAttachment(IJ)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "threadId"    # J

    .prologue
    .line 704
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 705
    .local v0, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-nez v0, :cond_0

    .line 706
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mWorkingMessage.getSlideshow() == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    invoke-static {p0, v0, p2, p3}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;J)V

    .line 738
    :goto_0
    return-void

    .line 716
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$5;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$6;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity$6;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;IJ)V

    const v4, 0x7f0f0064

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method


# virtual methods
.method public addTimer(Z)V
    .locals 4
    .param p1, "useLastTimer"    # Z

    .prologue
    .line 10438
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/WidgetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10440
    .local v0, "timerIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 10441
    const-string v1, "init_time"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getTimer()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 10444
    :cond_0
    const/16 v1, 0x74

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 10445
    const/high16 v1, 0x7f050000

    const v2, 0x7f050001

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->overridePendingTransition(II)V

    .line 10446
    return-void
.end method

.method public checkSipDestAddrIsAvailable([Ljava/lang/String;)V
    .locals 7
    .param p1, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 8470
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 8471
    :cond_0
    const-string v4, "Mms/compose"

    const-string v5, "checkSipDestAddrIsAvailable numbers is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8483
    :cond_1
    :goto_0
    return-void

    .line 8474
    :cond_2
    const-string v4, "Mms/compose"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSipDestAddrIsAvailable numbers length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSipStatuOffline = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/util/SipMessageManager;->isSipStatuOffline()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8476
    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/SipMessageManager;->isSipStatuOffline()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8477
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 8478
    .local v3, "number":Ljava/lang/String;
    sget-object v4, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->setSipStatuWhenOffline(Ljava/lang/String;Lcom/meizu/widget/RecipientStateInfo$SipState;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8477
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8480
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "number":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/SipMessageManager;->isSipMessageOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8481
    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/android/mms/util/SipMessageManager;->checkSipOnline(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected confirmSendMessageIsPrepared()V
    .locals 1

    .prologue
    .line 9124
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isPrepareForwardPduOk:Z

    if-eqz v0, :cond_0

    .line 9125
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 9129
    :goto_0
    return-void

    .line 9127
    :cond_0
    const v0, 0x7f0f01a9

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showPrepareForwardProgress(I)V

    goto :goto_0
.end method

.method public final discard()V
    .locals 1

    .prologue
    .line 7709
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7712
    :cond_0
    :goto_0
    return-void

    .line 7711
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 9579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 9580
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onUserInteraction()V

    .line 9582
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9589
    :cond_1
    :goto_0
    return v0

    .line 9586
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9589
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 3907
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showOrHideSoftKeyboard(Z)Z

    .line 3908
    invoke-super {p0}, Lcom/android/mms/MmsBaseActivity;->finish()V

    .line 3909
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3910
    sget v0, Lcom/flyme/internal/R$anim;->mz_edit_new_close_enter:I

    sget v1, Lcom/flyme/internal/R$anim;->mz_edit_new_close_exit:I

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->overridePendingTransition(II)V

    .line 3912
    :cond_0
    return-void
.end method

.method public getAddressName(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "msgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MessageItem;>;"
    const/4 v6, 0x0

    .line 8734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8735
    .local v0, "Recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 8736
    .local v3, "reciplist":Lcom/android/mms/data/ContactList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8737
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 8745
    :goto_0
    const-string v1, ""

    .line 8746
    .local v1, "address":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 8747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8748
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_0

    .line 8749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8746
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8739
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 8740
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8739
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8742
    :cond_2
    invoke-static {v0, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v3

    goto :goto_0

    .line 8753
    .restart local v1    # "address":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;
    .locals 1

    .prologue
    .line 5405
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-nez v0, :cond_0

    .line 5406
    new-instance v0, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    .line 5408
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object v0
.end method

.method public final getCurrentMsgProtocl()I
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2692
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v3}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 2693
    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/SipMessageManager;->isSipMessageOn()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 2701
    :cond_0
    :goto_0
    return v0

    .line 2695
    :cond_1
    invoke-static {}, Lcom/android/mms/transaction/sns/SnsHelper;->hasLoginSnsAccount()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 2698
    goto :goto_0

    .line 2701
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public getFailedAddress(Lcom/android/mms/ui/MessageItem;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/MessageItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8893
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 8894
    .local v17, "failedmsglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MessageItem;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    :cond_0
    const-string v2, "sms"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8896
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8936
    :cond_2
    :goto_0
    return-object v17

    .line 8899
    :cond_3
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getAssociationId(J)J

    move-result-wide v14

    .line 8900
    .local v14, "association_id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-ltz v2, :cond_2

    .line 8903
    const/4 v10, 0x0

    .line 8904
    .local v10, "message_cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 8905
    .local v4, "conversationUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "association_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8907
    .local v6, "associaSelect":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 8909
    if-eqz v10, :cond_5

    .line 8910
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 8911
    .local v13, "count":I
    const-string v2, "MessageItem"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 8912
    .local v12, "temppatte":Ljava/util/regex/Pattern;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8913
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v13, :cond_6

    .line 8914
    const/16 v19, 0x0

    .line 8916
    .local v19, "tempmsgItem":Lcom/android/mms/ui/MessageItem;
    :try_start_1
    new-instance v7, Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    new-instance v11, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v11}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8922
    .end local v19    # "tempmsgItem":Lcom/android/mms/ui/MessageItem;
    .local v7, "tempmsgItem":Lcom/android/mms/ui/MessageItem;
    :goto_2
    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8923
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8925
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 8913
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 8919
    .end local v7    # "tempmsgItem":Lcom/android/mms/ui/MessageItem;
    .restart local v19    # "tempmsgItem":Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v16

    .line 8920
    .local v16, "e":Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/compose"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v7, v19

    .end local v19    # "tempmsgItem":Lcom/android/mms/ui/MessageItem;
    .restart local v7    # "tempmsgItem":Lcom/android/mms/ui/MessageItem;
    goto :goto_2

    .line 8933
    .end local v7    # "tempmsgItem":Lcom/android/mms/ui/MessageItem;
    .end local v12    # "temppatte":Ljava/util/regex/Pattern;
    .end local v13    # "count":I
    .end local v16    # "e":Lcom/google/android/mms/MmsException;
    .end local v18    # "i":I
    :cond_5
    if-eqz v10, :cond_2

    .line 8934
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 8933
    .restart local v12    # "temppatte":Ljava/util/regex/Pattern;
    .restart local v13    # "count":I
    .restart local v18    # "i":I
    :cond_6
    if-eqz v10, :cond_2

    .line 8934
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 8930
    .end local v12    # "temppatte":Ljava/util/regex/Pattern;
    .end local v13    # "count":I
    .end local v18    # "i":I
    :catch_1
    move-exception v16

    .line 8931
    .local v16, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8933
    if-eqz v10, :cond_2

    .line 8934
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 8933
    .end local v16    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_7

    .line 8934
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method public getSelectSlotId()I
    .locals 1

    .prologue
    .line 9898
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->selectSlotId()Z

    .line 9899
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    return v0
.end method

.method protected getThreadIdWhenHiddenMessagePopup()J
    .locals 2

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    .line 3253
    invoke-super {p0}, Lcom/android/mms/MmsBaseActivity;->getThreadIdWhenHiddenMessagePopup()J

    move-result-wide v0

    .line 3254
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public hideKeyboard()V
    .locals 3

    .prologue
    .line 6762
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6764
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v1}, Lcom/android/mms/view/EditTextEx;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6765
    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 1

    .prologue
    .line 4318
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showOrHideSoftKeyboard(Z)Z

    .line 4319
    return-void
.end method

.method protected initIsPhoneOperator()V
    .locals 3

    .prologue
    .line 10015
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {v1}, Lcom/android/mms/util/ServiceNumberHelper;->getOperator(Lcom/android/mms/data/Conversation;)Lcom/android/mms/util/ServiceNumberHelper$Operator;

    move-result-object v0

    .line 10016
    .local v0, "operator":Lcom/android/mms/util/ServiceNumberHelper$Operator;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPhoneOperator:Z

    .line 10017
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPhoneOperator:Z

    if-eqz v1, :cond_0

    .line 10018
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSendMsgUsable()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/smartmessage/SmartMessageViewContainer;->initView(Lcom/android/mms/util/ServiceNumberHelper$Operator;Z)V

    .line 10019
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$75;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$75;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/smartmessage/SmartMessageViewContainer;->setOperatorBtnClick(Lcom/android/mms/smartmessage/SmartMessageViewContainer$OperatorBtnClick;)V

    .line 10028
    :cond_0
    return-void

    .line 10016
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/os/Bundle;J)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "originalThreadId"    # J

    .prologue
    .line 2919
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2922
    .local v2, "intent":Landroid/content/Intent;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 2926
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessageActivity;->initActivityState(Landroid/os/Bundle;)V

    .line 2928
    const-wide/16 v12, 0x0

    cmp-long v12, p2, v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v12

    cmp-long v12, p2, v12

    if-nez v12, :cond_0

    .line 2930
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ComposeMessageActivity.initialize:  threadId didn\'t change from: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v12, v0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 2934
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "savedInstanceState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " intent = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mConversation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 2938
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2941
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/mms/ui/ComposeMessageActivity;->undeliveredMessageDialog(J)V

    .line 2944
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 2948
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initMessageList()V

    .line 2952
    const/4 v4, 0x0

    .line 2958
    .local v4, "isForwardedMessage":Z
    if-nez p1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleSendIntent()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleForwardedMessage()Z

    move-result v12

    if-nez v12, :cond_b

    :cond_2
    const/4 v5, 0x1

    .line 2959
    .local v5, "mShouldLoadDraft":Z
    :goto_0
    if-eqz v5, :cond_3

    .line 2960
    const-string v12, "sending_msg_id"

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v12, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->sending_msg_id:J

    .line 2961
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadDraft()Z

    .line 2965
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12, v13}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 2968
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_d

    .line 2972
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    .line 2973
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 2974
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 2976
    .local v3, "intentData":Landroid/net/Uri;
    if-eqz v3, :cond_6

    .line 2977
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    const-string v13, "smsto"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2978
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2980
    .local v6, "myBundle":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 2981
    .local v9, "strRet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_4

    .line 2982
    const-string v12, "contacts_selected"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2985
    :cond_4
    if-eqz v9, :cond_c

    .line 2986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2988
    .local v10, "start":J
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 2989
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v12, v9}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/util/ArrayList;)I

    .line 2992
    :cond_5
    const/4 v12, 0x0

    const-string v13, "mRecipientsEditor addRecipient"

    invoke-static {v12, v13, v10, v11}, Lcom/android/mms/ui/MessageUtils;->logfunccostTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 3014
    .end local v3    # "intentData":Landroid/net/Uri;
    .end local v6    # "myBundle":Landroid/os/Bundle;
    .end local v9    # "strRet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "start":J
    :cond_6
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 3017
    const-string v12, "subject"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->drawAttachViewAndSubject(Z)V

    .line 3018
    if-nez v5, :cond_7

    .line 3020
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 3023
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged()V

    .line 3025
    const-string v12, "Mms:app"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3026
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update title, mConversation="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3029
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 3031
    if-eqz v4, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 3034
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v12}, Lcom/meizu/widget/RecipientEdit;->requestFocus()Z

    .line 3037
    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyBoardShowFlags:I

    .line 3039
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSelectContact:Z

    .line 3040
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    const/4 v14, 0x1

    if-le v12, v14, :cond_f

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Lcom/android/mms/ui/MessageListAdapter;->setIsGroupConversation(Z)V

    .line 3042
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateActionBarPhoto()V

    .line 3043
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateComposeTextHint()V

    .line 3045
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->resetActionBarHeight(Landroid/app/ActionBar;)V

    .line 3047
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initIsPhoneOperator()V

    .line 3049
    sget-boolean v12, Lcom/android/mms/MmsApp;->CMCC:Z

    if-eqz v12, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSubjectEnable(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 3050
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 3052
    :cond_a
    return-void

    .line 2958
    .end local v5    # "mShouldLoadDraft":Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2994
    .restart local v3    # "intentData":Landroid/net/Uri;
    .restart local v5    # "mShouldLoadDraft":Z
    .restart local v6    # "myBundle":Landroid/os/Bundle;
    .restart local v9    # "strRet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 2995
    .local v8, "smsToAddr":Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v8, v12, v13}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v7

    .line 2996
    .local v7, "recipients":Lcom/android/mms/data/ContactList;
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "strRet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2997
    .restart local v9    # "strRet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 2998
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v12, v9}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/util/ArrayList;)I

    .line 2999
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v12}, Lcom/android/mms/view/EditTextEx;->isFocused()Z

    move-result v12

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v12}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v12

    if-nez v12, :cond_6

    .line 3000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v12}, Lcom/android/mms/view/EditTextEx;->requestFocus()Z

    goto/16 :goto_1

    .line 3007
    .end local v3    # "intentData":Landroid/net/Uri;
    .end local v6    # "myBundle":Landroid/os/Bundle;
    .end local v7    # "recipients":Lcom/android/mms/data/ContactList;
    .end local v8    # "smsToAddr":Ljava/lang/String;
    .end local v9    # "strRet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    .line 3008
    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/util/SipMessageManager;->isSipMessageOn()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v12

    if-nez v12, :cond_e

    .line 3009
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedNotifyContactHeaderWidget:Z

    .line 3011
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v12, v0}, Lcom/android/mms/util/LayoutUtil;->setHighActionBarBlurDrawableForCma(Landroid/app/ActionBar;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 3040
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method public invalidateList()V
    .locals 1

    .prologue
    .line 4893
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->invalidateViews()V

    .line 4894
    return-void
.end method

.method public invalidateVoiceBtn()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 4526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->voiceBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 4527
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_3

    .line 4529
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->voiceBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4541
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshEditFrmMargin()V

    .line 4543
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateComposeTextHint()V

    .line 4544
    return-void

    .line 4530
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isOldFlymeVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4532
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->voiceBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 4535
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->voiceBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4536
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->voiceBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4537
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyBoardShowFlags:I

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->hasMaskKeyboardFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-eqz v0, :cond_1

    .line 4538
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;->enum_Auto:Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateKeyboardStatus(Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;I)V

    goto :goto_0
.end method

.method public isAttachmentShown()Z
    .locals 1

    .prologue
    .line 4496
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachGroupShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isQuickReplyPopupViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFaceOrVoiceImeShowing()Z
    .locals 1

    .prologue
    .line 4290
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyBoardShowFlags:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasOtherKeyboardShow(I)Z

    move-result v0

    return v0
.end method

.method public isFlymeMmsOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2667
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isFlyMeOpen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCurrentSlotOnBind:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFlymeVersion:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlymeOpen(Z)Z
    .locals 1
    .param p1, "mms"    # Z

    .prologue
    .line 2651
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v0

    .line 2652
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeSmsOpen()Z

    move-result v0

    goto :goto_0
.end method

.method public isFlymeSmsOpen()Z
    .locals 2

    .prologue
    .line 2659
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isFlyMeOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsCurrentSlotOnBind:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFlymeVersion:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNewConversationMode()Z
    .locals 4

    .prologue
    .line 3951
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3952
    :cond_0
    const/4 v0, 0x1

    .line 3954
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOldFlymeVersion()Z
    .locals 1

    .prologue
    .line 2644
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isFlyMeOpen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFlymeVersion:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRecording()Z
    .locals 1

    .prologue
    .line 9608
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    if-nez v0, :cond_0

    .line 9609
    const/4 v0, 0x0

    .line 9610
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    invoke-virtual {v0}, Lcom/android/mms/util/VoiceRecorder;->isRecording()Z

    move-result v0

    goto :goto_0
.end method

.method protected isSendMsgUsable()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 40
    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->DISABLE_SEND_BTN_WHEN_NO_SIM_CARD:Z

    if-nez v6, :cond_2

    move v0, v4

    .line 41
    .local v0, "a":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    .line 42
    .local v1, "b":Z
    sget v6, Lcom/android/mms/util/DualSimMessageUtils;->CURRENT_NOT_RADIO_OFF_SIM_COUNT:I

    if-lez v6, :cond_3

    move v2, v4

    .line 43
    .local v2, "c":Z
    :goto_1
    sget v6, Lcom/android/mms/util/DualSimMessageUtils;->CURRENT_USEABLE_SIM_COUNT:I

    if-lez v6, :cond_4

    move v3, v4

    .line 44
    .local v3, "d":Z
    :goto_2
    const-string v6, "hong_SendMsg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!DISABLE_SEND_BTN_WHEN_NO_SIM_CARD = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsSmsEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " CURRENT_NOT_RADIO_OFF_SIM_COUNT = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " CURRENT_USEABLE_SIM_COUNT = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    return v5

    .end local v0    # "a":Z
    .end local v1    # "b":Z
    .end local v2    # "c":Z
    .end local v3    # "d":Z
    :cond_2
    move v0, v5

    .line 40
    goto :goto_0

    .restart local v0    # "a":Z
    .restart local v1    # "b":Z
    :cond_3
    move v2, v5

    .line 42
    goto :goto_1

    .restart local v2    # "c":Z
    :cond_4
    move v3, v5

    .line 43
    goto :goto_2
.end method


.method public isSnsRecipients()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4384
    invoke-static {}, Lcom/android/mms/transaction/sns/SnsHelper;->hasLoginSnsAccount()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 4390
    :cond_0
    :goto_0
    return v0

    .line 4387
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4388
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit;->containsSns()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 4390
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isSnsConversation()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public loadMessageContent()V
    .locals 2

    .prologue
    .line 3355
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-nez v0, :cond_0

    .line 3356
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->blockMarkAsReadOrTop(Z)V

    .line 3357
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 3358
    const/16 v0, 0x2537

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQueryReally(I)V

    .line 3359
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V

    .line 3361
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 3362
    return-void
.end method

.method public onAccountChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "hasLogin"    # Z

    .prologue
    .line 4903
    const-string v0, "com.meizu.sns.sina"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sina.weibo.authenticator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4905
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->snsPicView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->snsPicView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4906
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->snsPicView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4908
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v0, :cond_2

    .line 4909
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v0}, Lcom/meizu/widget/RecipientEdit;->getInputType()I

    move-result v2

    if-eqz p2, :cond_3

    const/4 v0, 0x4

    :goto_0
    and-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/meizu/widget/RecipientEdit;->setInputType(I)V

    .line 4912
    :cond_2
    return-void

    .line 4909
    :cond_3
    const/4 v0, -0x5

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 34
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 4946
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 4948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft()V

    .line 4954
    :cond_0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 5200
    :cond_1
    :goto_0
    return-void

    .line 4959
    :cond_2
    const-string v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4960
    if-eqz p3, :cond_4

    .line 4961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), dataUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 4966
    :cond_3
    :goto_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 5024
    :pswitch_1
    if-eqz p3, :cond_1

    .line 5025
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->addImageAsync(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 4963
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), data is null..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4968
    :pswitch_2
    if-eqz p3, :cond_1

    .line 4969
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v22

    .line 4970
    .local v22, "newMessage":Lcom/android/mms/data/WorkingMessage;
    if-eqz v22, :cond_1

    .line 4971
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 4972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 4973
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 4974
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->drawAttachViewAndSubject(Z)V

    .line 4975
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    goto/16 :goto_0

    .line 4981
    .end local v22    # "newMessage":Lcom/android/mms/data/WorkingMessage;
    :pswitch_3
    if-eqz p3, :cond_1

    .line 4982
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->setFileSavePath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4988
    :pswitch_4
    if-eqz p3, :cond_1

    .line 4989
    const-string v2, "attach_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 4990
    .local v27, "pathAndName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->setFileSavePath(Ljava/lang/String;)V

    .line 4991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->tempUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v2, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateFlymeMmsAttachPath(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4999
    .end local v27    # "pathAndName":Ljava/lang/String;
    :pswitch_5
    if-eqz p3, :cond_1

    .line 5000
    const-string v2, "Camera_Type"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 5001
    .local v29, "type":I
    const-string v2, "isFlymeMms"

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 5002
    .local v20, "mmsProtocol":I
    if-nez v29, :cond_6

    .line 5005
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v32

    .line 5006
    .local v32, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 5007
    sget-object v32, Lcom/android/mms/TempFileProvider;->SCRAP_IMAGE_CONTENT_URI:Landroid/net/Uri;

    .line 5008
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 5010
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addImageAsync(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 5012
    .end local v32    # "uri":Landroid/net/Uri;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v33

    .line 5013
    .local v33, "videoUri":Landroid/net/Uri;
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_7

    .line 5014
    invoke-static/range {p0 .. p0}, Lcom/android/mms/TempFileProvider;->renameScrapRecordeFile(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v33

    .line 5015
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 5017
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideoAsync(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 5031
    .end local v20    # "mmsProtocol":I
    .end local v29    # "type":I
    .end local v33    # "videoUri":Landroid/net/Uri;
    :pswitch_6
    if-eqz p3, :cond_1

    .line 5032
    const-string v2, "location_content"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mLocation:Ljava/lang/String;

    .line 5033
    const-string v2, "location_shortaddress"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mShortAddress:Ljava/lang/String;

    .line 5034
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->selectSlotId()Z

    .line 5035
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded(Landroid/net/Uri;ZZZ)V

    goto/16 :goto_0

    .line 5041
    :pswitch_7
    invoke-static/range {p0 .. p0}, Lcom/android/mms/TempFileProvider;->renameScrapRecordeFile(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v33

    .line 5043
    .restart local v33    # "videoUri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 5044
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideoAsync(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 5048
    .end local v33    # "videoUri":Landroid/net/Uri;
    :pswitch_8
    if-eqz p3, :cond_1

    .line 5049
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideoAsync(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 5054
    :pswitch_9
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v32

    check-cast v32, Landroid/net/Uri;

    .line 5055
    .restart local v32    # "uri":Landroid/net/Uri;
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5058
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 5063
    .end local v32    # "uri":Landroid/net/Uri;
    :pswitch_a
    if-eqz p3, :cond_1

    .line 5065
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;)V

    .line 5067
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto/16 :goto_0

    .line 5072
    :pswitch_b
    const-string v2, "exit_ecm_result"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 5073
    .local v24, "outOfEmergencyMode":Z
    if-eqz v24, :cond_1

    .line 5074
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto/16 :goto_0

    .line 5081
    .end local v24    # "outOfEmergencyMode":Z
    :pswitch_c
    const-string v2, "com.android.contacts.extra.REQUESTED_INFO_TYPE"

    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 5082
    .restart local v29    # "type":I
    const/4 v2, 0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_8

    if-nez v29, :cond_1

    .line 5084
    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 5085
    .local v11, "contactUri":Landroid/net/Uri;
    if-eqz v11, :cond_1

    .line 5087
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_9

    .line 5088
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 5090
    .local v12, "contactId":J
    new-instance v2, Lcom/android/mms/vcard/VcardTools;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/mms/vcard/VcardTools;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v12, v13}, Lcom/android/mms/vcard/VcardTools;->getVcfSimpleStringInfo(J)Ljava/lang/String;

    move-result-object v28

    .line 5091
    .local v28, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->addText(Ljava/lang/String;)V

    .line 5097
    .end local v12    # "contactId":J
    .end local v28    # "text":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/mms/MmsConfig;->putAttachMentContactType(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 5094
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVCardAsync(Landroid/net/Uri;Z)V

    goto :goto_2

    .line 5102
    .end local v11    # "contactUri":Landroid/net/Uri;
    .end local v29    # "type":I
    :pswitch_d
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v32

    .line 5103
    .restart local v32    # "uri":Landroid/net/Uri;
    if-nez v32, :cond_a

    .line 5104
    const/4 v2, -0x1

    const v3, 0x7f0f0035

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    goto/16 :goto_0

    .line 5108
    :cond_a
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 5109
    .local v16, "filePath":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0x2f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_b

    .line 5110
    const/4 v2, 0x0

    const/16 v3, 0x2f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->setAddFileAttachmentPath(Ljava/lang/String;)V

    .line 5114
    :cond_b
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getFileExtensionFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5115
    .local v14, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 5117
    .local v19, "mimeType":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/meizu/android/mms/MzContentType;->isSupportedImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5118
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addImageAsync(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 5119
    :cond_c
    invoke-static/range {v19 .. v19}, Lcom/meizu/android/mms/MzContentType;->isSupportedVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5120
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideoAsync(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 5121
    :cond_d
    invoke-static/range {v19 .. v19}, Lcom/meizu/android/mms/MzContentType;->isSupportedAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5122
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 5123
    :cond_e
    invoke-static/range {v19 .. v19}, Lcom/meizu/android/mms/MzContentType;->isSupportedVcardType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5124
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVcard(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 5125
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeMmsOpen()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v2}, Lcom/meizu/widget/RecipientEdit;->getRecipientCount()I

    move-result v2

    if-nez v2, :cond_11

    invoke-static {}, Lcom/android/mms/util/SipMessageManager;->getInstance()Lcom/android/mms/util/SipMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/SipMessageManager;->isSipMessageOn()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {}, Lcom/android/mms/transaction/sns/SnsHelper;->hasLoginSnsAccount()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5129
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addFile(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 5131
    :cond_11
    const/4 v2, -0x3

    const v3, 0x7f0f0035

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 5132
    const-string v2, "Mms/compose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add file from doc failed, uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mimeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5138
    .end local v14    # "extension":Ljava/lang/String;
    .end local v16    # "filePath":Ljava/lang/String;
    .end local v19    # "mimeType":Ljava/lang/String;
    .end local v32    # "uri":Landroid/net/Uri;
    :pswitch_e
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 5139
    .local v15, "extras":Landroid/os/Bundle;
    if-eqz v15, :cond_1

    const-string v2, "com.android.contacts.extra.MULTIPLE_PICK_DATAS"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5140
    const-string v2, "com.android.contacts.extra.MULTIPLE_PICK_DATAS"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v26

    .line 5141
    .local v26, "parcels":[Landroid/os/Parcelable;
    if-eqz v26, :cond_1

    move-object/from16 v0, v26

    array-length v2, v0

    if-lez v2, :cond_1

    .line 5142
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5143
    .local v9, "addRecipientlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v10, v26

    .local v10, "arr$":[Landroid/os/Parcelable;
    array-length v0, v10

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    aget-object v25, v10, v17

    .local v25, "parcel":Landroid/os/Parcelable;
    move-object/from16 v2, v25

    .line 5144
    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "display_name"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 5145
    .local v21, "name":Ljava/lang/String;
    check-cast v25, Landroid/content/ContentValues;

    .end local v25    # "parcel":Landroid/os/Parcelable;
    const-string v2, "data1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 5146
    .local v23, "number":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5147
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5143
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 5149
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5152
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "number":Ljava/lang/String;
    :cond_13
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x96

    if-ge v2, v3, :cond_14

    .line 5153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v2, v9}, Lcom/meizu/widget/RecipientEdit;->addRecipient(Ljava/util/ArrayList;)I

    .line 5154
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 5155
    :cond_14
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x96

    if-lt v2, v3, :cond_1

    .line 5157
    const v2, 0x7f0f01aa

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showPrepareForwardProgress(I)V

    .line 5158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$44;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9}, Lcom/android/mms/ui/ComposeMessageActivity$44;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/ArrayList;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 5173
    .end local v9    # "addRecipientlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "arr$":[Landroid/os/Parcelable;
    .end local v15    # "extras":Landroid/os/Bundle;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v26    # "parcels":[Landroid/os/Parcelable;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v2, :cond_15

    .line 5174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->finishMultiChoice()V

    .line 5175
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->onNewIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5180
    :pswitch_10
    if-eqz p3, :cond_1

    .line 5181
    const-string v2, "result"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v30

    .line 5182
    .local v30, "timeInMillis":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_CODE_SELECT_TIME selectedTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/MyLog;->simpleLog(Ljava/lang/String;)V

    .line 5183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_CODE_SELECT_TIME currentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/MyLog;->simpleLog(Ljava/lang/String;)V

    .line 5184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v30, v2

    if-gez v2, :cond_16

    .line 5185
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v8

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/MessageUtils;->showToast(Ljava/lang/CharSequence;Landroid/content/Context;IIZII)V

    goto/16 :goto_0

    .line 5191
    :cond_16
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->changeMmsSms(J)V

    .line 5192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/view/MmsRichContainer;->showTimer(Z)V

    .line 5193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setTimer(J)V

    goto/16 :goto_0

    .line 4966
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_b
        :pswitch_0
        :pswitch_e
        :pswitch_3
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_4
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method public onAttachmentChanged()V
    .locals 1

    .prologue
    .line 3979
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$30;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$30;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3987
    return-void
.end method

.method public onAttachmentError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 4138
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$36;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$36;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4145
    return-void
.end method

.method public onAttachmentRemoved()V
    .locals 1

    .prologue
    .line 3996
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3997
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 3998
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 3857
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachGroupShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3858
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAttachGroupView(Z)V

    .line 3873
    :cond_0
    :goto_0
    return-void

    .line 3861
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isQuickReplyPopupViewShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3862
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideQuickReplyPopupView()V

    goto :goto_0

    .line 3865
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3868
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$29;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$29;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 5673
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->voiceBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 5675
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    iget-object v0, v0, Lcom/android/mms/util/VoiceRecorder;->mEditText:Lcom/android/mms/view/EditTextEx;

    if-nez v0, :cond_0

    .line 5676
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVoiceRecorder:Lcom/android/mms/util/VoiceRecorder;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecordCallback:Lcom/android/mms/util/VoiceRecorder$RecordCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/util/VoiceRecorder;->refreshVoiceRecorder(Landroid/content/Context;Lcom/android/mms/view/EditTextEx;Lcom/android/mms/util/VoiceRecorder$RecordCallback;)V

    .line 5679
    :cond_0
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;->enum_Auto:Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateKeyboardStatus(Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;I)V

    .line 5680
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/view/MmsRichContainer;->isAttachmentSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5681
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0, v4, v4}, Lcom/android/mms/view/MmsRichContainer;->selectedAttachment(ZI)V

    .line 5703
    :cond_1
    :goto_0
    return-void

    .line 5685
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    if-ne p1, v0, :cond_4

    .line 5686
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isKeyBoardShow(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    .line 5687
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyBoardShowFlags:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasOtherKeyboardShow(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5688
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;->enum_Normal:Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;

    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->updateKeyboardStatus(Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;I)V

    .line 5689
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/view/MmsRichContainer;->isAttachmentSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5690
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0, v4, v4}, Lcom/android/mms/view/MmsRichContainer;->selectedAttachment(ZI)V

    goto :goto_0

    .line 5691
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/view/MmsRichContainer;->isAttachmentSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5693
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0, v4, v4}, Lcom/android/mms/view/MmsRichContainer;->selectedAttachment(ZI)V

    goto :goto_0

    .line 5695
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMsgBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 5696
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Send Message -> before mSelectedSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5697
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->selectSlotId()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5698
    :cond_5
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Send Message -> after mSelectedSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5699
    invoke-static {p0}, Lcom/android/mms/util/MessageUsageStatsUtils;->monitorSendMessageSituation(Landroid/content/Context;)V

    .line 5700
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIsPrepared()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3674
    invoke-super {p0, p1}, Lcom/android/mms/MmsBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3676
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resetConfiguration(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3682
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshActionModeWhenorientionChange()V

    .line 3685
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    if-eqz v0, :cond_0

    .line 3686
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v0}, Lcom/android/mms/view/MzContactHeaderWidget;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$MyOnPreDrawListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$MyOnPreDrawListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3689
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshViewWhenOrientionChange()V

    .line 3690
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 3691
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 3692
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->superNotifyDataSetChanged()V

    .line 3693
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v0, :cond_2

    .line 3694
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->applyMeizuStyle()V

    .line 3698
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3699
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$dimen;->mz_recipient_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/RecipientEdit;->setMaxHeight(I)V

    .line 3704
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiCallback:Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsMultiChoiceMode:Z

    if-eqz v0, :cond_4

    .line 3705
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiCallback:Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$ModeCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3707
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetActionBarHeight(Landroid/app/ActionBar;)V

    .line 3709
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachmentShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBottomDividerVisibility(Z)V

    .line 3715
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged()V

    .line 3716
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 2732
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    .line 2733
    invoke-super {p0, p1}, Lcom/android/mms/MmsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2734
    iput-wide v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->sending_msg_id:J

    .line 2735
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastUpdateTime:Landroid/text/format/Time;

    .line 2736
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastUpdateTime:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 2737
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->resetConfiguration(Landroid/content/res/Configuration;)Z

    .line 2739
    const v3, 0x7f040009

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->setContentView(I)V

    .line 2740
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->registerSipBroadcast()V

    .line 2743
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgressBarVisibility(Z)V

    .line 2745
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setupActionBar()V

    .line 2748
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V

    .line 2750
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 2751
    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    .line 2753
    invoke-virtual {p0, p1, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->initialize(Landroid/os/Bundle;J)V

    .line 2754
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v3, :cond_0

    .line 2755
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v5}, Lcom/android/mms/data/Conversation;->setIsSeningMsg(Z)V

    .line 2757
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setListViewPadding()V

    .line 2763
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->registerSdBroadcast()V

    .line 2765
    const/16 v3, 0x2537

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQueryReally(I)V

    .line 2767
    invoke-static {}, Lcom/android/mms/transaction/sns/SnsHelper;->getInstance()Lcom/android/mms/transaction/sns/SnsHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/mms/transaction/sns/SnsHelper;->registerAccountChangeListener(Lcom/android/mms/transaction/sns/SnsHelper$AccountChangeObserver;)Z

    .line 2769
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactListener:Lcom/android/mms/MmsApp$UpdateContactUI;

    invoke-virtual {v3, v4}, Lcom/android/mms/MmsApp;->registerContactUpdate(Lcom/android/mms/MmsApp$UpdateContactUI;)V

    .line 2771
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/mms/MmsApp;->addSipStatuListener(Lcom/android/mms/MmsApp$OnSipStatuChangeCallback;)V

    .line 2772
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->registerBindImsiContentObserver()V

    .line 2781
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 2782
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2783
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x200

    .line 2784
    .local v0, "bits":I
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 2785
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 2786
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 2787
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2795
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCustomeUseableSimCountChangedListener()Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/DualSimMessageUtils;->addListener(Lcom/android/mms/util/DualSimMessageUtils$UseableSimCountChangedListener;)V

    .line 2796
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCustomeNotRadioOffSimCountChangedListener()Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/DualSimMessageUtils;->addNotRadioOffSimListener(Lcom/android/mms/util/DualSimMessageUtils$UseableSimCountChangedListener;)V

    .line 2797
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 4548
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4549
    const v0, 0x7f0e0184

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentAdd:Landroid/view/MenuItem;

    .line 4550
    const v0, 0x7f0e00fb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    .line 4551
    const v0, 0x7f0e0183

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenu:Landroid/view/MenuItem;

    .line 4553
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initChangeSlotMenu()V

    .line 4554
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3611
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSipOrSdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3612
    invoke-static {}, Lcom/android/mms/transaction/sns/SnsHelper;->getInstance()Lcom/android/mms/transaction/sns/SnsHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/transaction/sns/SnsHelper;->unregisterAccountChangeListener(Lcom/android/mms/transaction/sns/SnsHelper$AccountChangeObserver;)Z

    .line 3613
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactListener:Lcom/android/mms/MmsApp$UpdateContactUI;

    invoke-virtual {v0, v1}, Lcom/android/mms/MmsApp;->unRegisterContactUpdate(Lcom/android/mms/MmsApp$UpdateContactUI;)V

    .line 3614
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/MmsApp;->removeSipStatuListener(Lcom/android/mms/MmsApp$OnSipStatuChangeCallback;)V

    .line 3615
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterBindImsiContentObserver()V

    .line 3617
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeUseableSimCountChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    if-eqz v0, :cond_0

    .line 3618
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeUseableSimCountChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    invoke-static {v0}, Lcom/android/mms/util/DualSimMessageUtils;->removeListener(Lcom/android/mms/util/DualSimMessageUtils$UseableSimCountChangedListener;)V

    .line 3619
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCustomeNotRadioOffSimCountChangedListener:Lcom/android/mms/ui/ComposeMessageActivity$CustomeUseableSimCountChangedListener;

    invoke-static {v0}, Lcom/android/mms/util/DualSimMessageUtils;->removeNotRadioOffSimListener(Lcom/android/mms/util/DualSimMessageUtils$UseableSimCountChangedListener;)V

    .line 3621
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 3622
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3623
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->cancelBackgroundLoading()V

    .line 3625
    :cond_1
    invoke-super {p0}, Lcom/android/mms/MmsBaseActivity;->onDestroy()V

    .line 3628
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_2

    .line 3629
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->setIsSeningMsg(Z)V

    .line 3634
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    if-eqz v0, :cond_3

    .line 3635
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mQuickReplyView:Lcom/android/mms/quickreply/QuickReplyView;

    invoke-virtual {v0}, Lcom/android/mms/quickreply/QuickReplyView;->customeDestory()V

    .line 3639
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->clearVoiceRecorder()V

    .line 3641
    sput-boolean v2, Lcom/android/mms/util/MessageUsageStatsUtils;->OPEN_FROM_LIST_ITEM_CLICK:Z

    .line 3642
    sput-boolean v2, Lcom/android/mms/util/MessageUsageStatsUtils;->OPEN_FROM_NEW_MESSAGE:Z

    .line 3643
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    .line 3812
    sparse-switch p1, :sswitch_data_0

    .line 3852
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/mms/MmsBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    :cond_1
    :goto_0
    return v7

    .line 3814
    :sswitch_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3817
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3823
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 3824
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3825
    .local v6, "type":Ljava/lang/String;
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3826
    .local v4, "msgId":J
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v8, v6, v4, v5, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 3828
    .local v3, "msgItem":Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_1

    .line 3829
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 3830
    .local v2, "l":Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    iget-boolean v8, v3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {p0, v2, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    .line 3818
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "l":Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    .end local v3    # "msgItem":Lcom/android/mms/ui/MessageItem;
    .end local v4    # "msgId":J
    .end local v6    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3819
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v7, "Mms/compose"

    const-string v8, "Unexpected ClassCastException."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3820
    invoke-super {p0, p1, p2}, Lcom/android/mms/MmsBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    goto :goto_0

    .line 3838
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3839
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto :goto_0

    .line 3812
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 4092
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$34;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$34;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4112
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3080
    invoke-super {p0, p1}, Lcom/android/mms/MmsBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 3081
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->setIntent(Landroid/content/Intent;)V

    .line 3082
    const/4 v0, 0x0

    .line 3083
    .local v0, "conversation":Lcom/android/mms/data/Conversation;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 3091
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 3092
    .local v2, "originalThreadId":J
    const-string v5, "thread_id"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3093
    .local v6, "threadId":J
    const-string v5, "sending_msg_id"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->sending_msg_id:J

    .line 3095
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3096
    .local v1, "intentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 3097
    .local v4, "sameThread":Z
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 3098
    const/4 v5, 0x0

    invoke-static {p0, v6, v7, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 3121
    :goto_0
    iget-wide v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->sending_msg_id:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/mms/data/Conversation;->setIsSeningMsg(Z)V

    .line 3123
    :cond_0
    const-string v5, "Mms:app"

    const/4 v8, 0x2

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNewIntent: data="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", thread_id extra is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", new conversation="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mConversation="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3137
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_7

    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v5}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x1

    .line 3141
    :goto_1
    if-eqz v4, :cond_9

    .line 3142
    const-string v5, "onNewIntent: same conversation"

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3143
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_8

    .line 3144
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 3145
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v8}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 3146
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 3147
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 3148
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initIsPhoneOperator()V

    .line 3154
    :cond_3
    :goto_2
    sget-boolean v5, Lcom/android/mms/util/DualSimMessageUtils;->IS_MULTI_SIM_DEVICE:Z

    if-eqz v5, :cond_4

    .line 3155
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->initSelectedSlotId(Landroid/content/Intent;)V

    .line 3190
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessageContent()V

    .line 3192
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateChangeSlotMenuTitle()V

    .line 3193
    return-void

    .line 3100
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_6

    .line 3104
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 3116
    :cond_6
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v1, v5, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 3117
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedShowKeyboard:Z

    goto/16 :goto_0

    .line 3137
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 3149
    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v5, :cond_3

    .line 3150
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->finishMultiChoice()V

    goto :goto_2

    .line 3159
    :cond_9
    const-string v5, "Mms:app"

    const/4 v8, 0x2

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3160
    const-string v5, "onNewIntent: different conversation"

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3162
    :cond_a
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    .line 3165
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->refreshUIWhenChangeThread()V

    .line 3170
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->initialize(Landroid/os/Bundle;J)V

    .line 3173
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setListViewPadding()V

    .line 3174
    sget-object v5, Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;->enum_Close:Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->updateKeyboardStatus(Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;I)V

    .line 3176
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v5, :cond_b

    .line 3177
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3178
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->cancelBackgroundLoading()V

    .line 3182
    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    if-eqz v5, :cond_4

    .line 3183
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    const/4 v8, 0x1

    invoke-direct {p0, v5, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;Z)V

    .line 3184
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/mms/view/MzContactHeaderWidget;->setFlymeState(Z)V

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v2, 0x63

    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 4597
    invoke-interface {p1}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v9

    .line 4599
    .local v9, "itemAlphabeticShortcut":C
    if-ne v9, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isPrepareForwardPduOk:Z

    if-nez v1, :cond_1

    .line 4600
    const v1, 0x7f0f01a9

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->showPrepareForwardProgress(I)V

    .line 4690
    :cond_0
    :goto_0
    return v11

    .line 4603
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    .line 4605
    .local v10, "itemId":I
    const v1, 0x102002c

    if-eq v10, v1, :cond_2

    .line 4606
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v11}, Lcom/android/mms/ui/MessageListView;->finishSingleChoice(Z)V

    .line 4608
    :cond_2
    if-eq v9, v2, :cond_3

    const/16 v1, 0x72

    if-ne v9, v1, :cond_4

    .line 4609
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showEditSpace()V

    .line 4611
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideQuickReplyPopupView()V

    .line 4612
    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    .line 4674
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->dump()V

    .line 4675
    invoke-static {}, Lcom/android/mms/data/Conversation;->dump()V

    .line 4676
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    goto :goto_0

    .line 4614
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isSupperPowerMode(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4615
    const v1, 0x7f0f02aa

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4618
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

    if-nez v1, :cond_6

    .line 4619
    const v1, 0x7f0e0047

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/view/AttachmentGroupView;

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

    .line 4637
    :cond_6
    invoke-direct {p0, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->updateBottomDividerVisibility(Z)V

    .line 4638
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-eqz v1, :cond_7

    const/16 v8, 0xc8

    .line 4639
    .local v8, "delay":I
    :goto_1
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;->enum_Close:Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;

    invoke-direct {p0, v1, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->updateKeyboardStatus(Lcom/android/mms/ui/ComposeMessageActivity$KeyboardInputType;I)V

    .line 4640
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachGroupView:Lcom/android/mms/view/AttachmentGroupView;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$41;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$41;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    int-to-long v4, v8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/mms/view/AttachmentGroupView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v8    # "delay":I
    :cond_7
    move v8, v6

    .line 4638
    goto :goto_1

    .line 4651
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v1

    if-nez v1, :cond_a

    .line 4653
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4655
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v11, :cond_9

    .line 4657
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 4658
    .local v0, "contact":Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v4

    const-wide/16 v12, 0x0

    cmp-long v1, v4, v12

    if-lez v1, :cond_8

    move v3, v11

    :goto_2
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isNetContactNumber()Z

    move-result v7

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/mms/ui/MessageUtils;->goContactDetail(Landroid/content/Context;Ljava/lang/String;ZJZZ)V

    goto/16 :goto_0

    :cond_8
    move v3, v6

    goto :goto_2

    .line 4662
    .end local v0    # "contact":Lcom/android/mms/data/Contact;
    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/RecipientsListPopup;->show(Lcom/android/mms/data/ContactList;Z)V

    goto/16 :goto_0

    .line 4665
    :cond_a
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v11}, Lcom/android/mms/ui/MessageListView;->finishSingleChoice(Z)V

    .line 4666
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$42;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$42;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4679
    :sswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardMenuItemSelected()V

    goto/16 :goto_0

    .line 4612
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x102002c -> :sswitch_2
        0x7f0e00fb -> :sswitch_3
        0x7f0e0184 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3510
    invoke-super {p0}, Lcom/android/mms/MmsBaseActivity;->onPause()V

    .line 3516
    const-wide/16 v0, -0x2

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V

    .line 3526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-eqz v0, :cond_0

    .line 3527
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/AsyncDialog;->clearPendingProgressDialog()V

    .line 3534
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    if-eqz v0, :cond_1

    .line 3535
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0}, Lcom/android/mms/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/MzTextUtils;->removeComposing(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->saveMmsDraftText(Ljava/lang/String;I)V

    .line 3536
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    if-eqz v0, :cond_1

    .line 3537
    const v0, 0x7f0f005f

    invoke-static {}, Lcom/android/mms/util/LayoutUtil;->getActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    .line 3546
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 3547
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z

    .line 3549
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 3550
    .local v7, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputVisibleChange:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v7, v0}, Landroid/view/inputmethod/InputMethodManager;->removeInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 3551
    return-void
.end method

.method public onPreMessageSent(Z)V
    .locals 1
    .param p1, "isRecord"    # Z

    .prologue
    .line 4078
    if-eqz p1, :cond_0

    .line 4079
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageAfterRecordRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4083
    :goto_0
    return-void

    .line 4081
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4559
    invoke-super {p0, p1}, Lcom/android/mms/MmsBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4560
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentAdd:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4563
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateVoiceBtn()V

    .line 4565
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPhoneOperator:Z

    if-eqz v0, :cond_4

    .line 4566
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentAdd:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4567
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4568
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4569
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardShowing:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4583
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 4584
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChangeSlotMenu:Landroid/view/MenuItem;

    sget v3, Lcom/android/mms/util/DualSimMessageUtils;->CURRENT_NOT_RADIO_OFF_SIM_COUNT:I

    if-le v3, v1, :cond_0

    sget v3, Lcom/android/mms/util/DualSimMessageUtils;->CURRENT_USEABLE_SIM_COUNT:I

    if-le v3, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4587
    :cond_1
    return v1

    .line 4568
    :cond_2
    const/16 v0, 0x7f

    goto :goto_0

    :cond_3
    move v0, v2

    .line 4569
    goto :goto_1

    .line 4573
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachGroupShown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4574
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentAdd:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4575
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 4577
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentAdd:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4578
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyboardMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onProtocolChanged(Z)V
    .locals 1
    .param p1, "convertToMms"    # Z

    .prologue
    .line 4007
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$31;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$31;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4030
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 3210
    invoke-super {p0}, Lcom/android/mms/MmsBaseActivity;->onRestart()V

    .line 3217
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3223
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3227
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 3229
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sanityCheckConversation()V

    .line 3245
    :cond_0
    :goto_0
    return-void

    .line 3230
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 3234
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V

    goto :goto_0

    .line 3239
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadDraft()Z

    .line 3240
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 3241
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;)Z

    .line 3242
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 3443
    invoke-super {p0}, Lcom/android/mms/MmsBaseActivity;->onResume()V

    .line 3452
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3454
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    invoke-virtual {v2}, Lcom/android/mms/view/NewConsationTitleFrm;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 3455
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->cmaTitle:Lcom/android/mms/view/NewConsationTitleFrm;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/mms/view/NewConsationTitleFrm;->setVisibility(I)V

    .line 3458
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;Z)V

    .line 3483
    :cond_1
    :goto_0
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3484
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInputVisibleChange:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->addInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 3486
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedShowKeyboard:Z

    if-eqz v2, :cond_3

    .line 3487
    :cond_2
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedShowKeyboard:Z

    .line 3488
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$27;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$27;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3499
    :cond_3
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update title, mConversation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3503
    :cond_4
    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z

    .line 3504
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 3505
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 3506
    return-void

    .line 3461
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->updateContactHeaderViewStatus(Z)V

    .line 3462
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedNotifyContactHeaderWidget:Z

    .line 3463
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v2}, Lcom/android/mms/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3466
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMmsDraftText()Ljava/lang/String;

    move-result-object v1

    .line 3467
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v2}, Lcom/android/mms/view/EditTextEx;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3468
    if-eqz v1, :cond_6

    .line 3469
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v2, v1}, Lcom/android/mms/view/EditTextEx;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 3470
    sget-boolean v2, Lcom/android/mms/util/DualSimMessageUtils;->IS_MULTI_SIM_DEVICE:Z

    if-eqz v2, :cond_1

    .line 3472
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v3}, Lcom/android/mms/view/EditTextEx;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/view/EditTextEx;->setSelection(I)V

    .line 3473
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initSelectedSlotIdForDraft()V

    goto/16 :goto_0

    .line 3476
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/mms/view/EditTextEx;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 3423
    invoke-super {p0, p1}, Lcom/android/mms/MmsBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3425
    const-string v0, "recipients"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 3429
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v0, :cond_0

    .line 3430
    const-string v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3432
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    if-eqz v0, :cond_1

    .line 3433
    const-string v0, "forwarded_message"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3436
    :cond_1
    sget-boolean v0, Lcom/android/mms/util/DualSimMessageUtils;->IS_MULTI_SIM_DEVICE:Z

    if-eqz v0, :cond_2

    .line 3437
    const-string v0, "selected_imsi"

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSelectedSlotId:I

    invoke-static {v1}, Lcom/android/mms/util/DualSimMessageUtils;->getImsiBySlotId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3439
    :cond_2
    return-void
.end method

.method public onSendFailed(IZ)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "noneOnPreMessageSent"    # Z

    .prologue
    .line 4151
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$37;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$37;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4159
    return-void
.end method

.method public onSipStatusChanged(I)V
    .locals 2
    .param p1, "statu"    # I

    .prologue
    .line 4919
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSipStatusChanged: statu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 4930
    :cond_0
    :goto_0
    return-void

    .line 4922
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v0}, Lcom/android/mms/view/MzContactHeaderWidget;->isSetSipDestChecker()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isNeedNotifyContactHeaderWidget:Z

    .line 4927
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v0}, Lcom/android/mms/view/MzContactHeaderWidget;->reCheckSipDestNumber()V

    .line 4928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSipStatusChanged: statu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", re-checked conversation sip statu..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3260
    invoke-super {p0}, Lcom/android/mms/MmsBaseActivity;->onStart()V

    .line 3262
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 3263
    .local v0, "isSmsEnabled":Z
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eq v0, v2, :cond_0

    .line 3264
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    .line 3265
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 3267
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateOperatorViewState()V

    .line 3268
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initFocus()V

    .line 3270
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3273
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3279
    const/16 v1, 0x10

    .line 3282
    .local v1, "mode":I
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedShowKeyboard:Z

    if-eqz v2, :cond_3

    .line 3283
    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsNeedShowKeyboard:Z

    .line 3285
    or-int/lit8 v1, v1, 0x4

    .line 3298
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3318
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->upateThreadStatus()V

    .line 3323
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSelectContact:Z

    if-nez v2, :cond_5

    .line 3324
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 3329
    :goto_1
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update title, mConversation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3333
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 3334
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    if-eqz v2, :cond_2

    .line 3335
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->setEditTextSingleLine(Z)V

    .line 3336
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->setMmsRichContainerLandMaxHeight(Z)V

    .line 3339
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/mms/MmsApp;->setcomposeInstance(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 3342
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 3344
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->stopInConversationNotificationSound(Landroid/content/Context;)V

    .line 3345
    return-void

    .line 3289
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 3293
    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 3295
    :cond_4
    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 3326
    :cond_5
    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSelectContact:Z

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3555
    invoke-super {p0}, Lcom/android/mms/MmsBaseActivity;->onStop()V

    .line 3557
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x2537

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 3559
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeRecipientsListeners()V

    .line 3562
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsListPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3563
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->recipientsListPopup:Lcom/android/mms/ui/RecipientsListPopup;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsListPopup;->dismiss()V

    .line 3565
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMmsRichContainer:Lcom/android/mms/view/MmsRichContainer;

    invoke-virtual {v0, v2, v2}, Lcom/android/mms/view/MmsRichContainer;->selectedAttachment(ZI)V

    .line 3569
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->blockMarkAsReadOrTop(Z)V

    .line 3571
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$28;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$28;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3590
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3591
    const-string v0, "save draft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3593
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    .line 3601
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3602
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShutdownBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3603
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->removecomposeInstance()V

    .line 3604
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .param p1, "updated"    # Lcom/android/mms/data/Contact;

    .prologue
    .line 7423
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isNewConversationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7437
    :cond_0
    :goto_0
    return-void

    .line 7425
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$64;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$64;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 3807
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkPendingNotification()V

    .line 3808
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 4694
    if-eqz p1, :cond_0

    .line 4695
    invoke-static {}, Lcom/android/mms/MmsConfig;->noSmartBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4697
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v0}, Lcom/android/mms/view/EditTextEx;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mKeyBoardShowFlags:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasOtherKeyboardFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4698
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$43;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$43;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/view/EditTextEx;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4707
    :cond_0
    return-void
.end method

.method public reSendMessageItem(Ljava/util/ArrayList;Z)V
    .locals 6
    .param p2, "useSipWay"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "MsgItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MessageItem;>;"
    const/4 v4, 0x0

    .line 8760
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8761
    .local v1, "messageNum":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 8762
    const-string v2, "Mms/compose"

    const-string v3, "resend message list size <1"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8781
    :goto_0
    return-void

    .line 8766
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v2}, Lcom/android/mms/view/MzContactHeaderWidget;->containSnsAccount()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/transaction/sns/SnsHelper;->hasLoginSnsAccount()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8767
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8768
    .local v0, "dialogBilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f01a4

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f0075

    new-instance v4, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 8775
    .end local v0    # "dialogBilder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const-string v3, "sms"

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8776
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->reSendSmsMessageItem(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 8778
    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v2, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->reSendMmsMessageItem(Lcom/android/mms/ui/MessageItem;Z)V

    goto :goto_0
.end method

.method public reSendMmsMessageItem(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 20
    .param p1, "msgItem"    # Lcom/android/mms/ui/MessageItem;
    .param p2, "useSipWay"    # Z

    .prologue
    .line 8846
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMessageslideshowSize()J

    move-result-wide v18

    .line 8847
    .local v18, "mmsSize":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getSlotId()I

    move-result v14

    .line 8848
    .local v14, "defaultSlotId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/ui/ComposeMessageActivity;->getResendSlotId(I)I

    move-result v12

    .line 8849
    .local v12, "selectedSlotId":I
    if-eq v14, v12, :cond_4

    const/4 v13, 0x1

    .line 8850
    .local v13, "isSlotIdChanged":Z
    :goto_0
    if-gez v12, :cond_0

    .line 8851
    const v2, 0x7f0f02c6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v8

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v8}, Lcom/android/mms/ui/MessageUtils;->showToast(ILandroid/content/Context;IIZII)V

    .line 8858
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isTalkMms()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFlymeMms()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isNormalMms()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isMuitMms()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8860
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mMessageProtocol:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMmsDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMessageslideshowSize()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    invoke-virtual/range {v2 .. v13}, Lcom/android/mms/data/WorkingMessage;->reSendMms(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;JJIZ)V

    .line 8886
    :goto_1
    return-void

    .line 8849
    .end local v13    # "isSlotIdChanged":Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 8862
    .restart local v13    # "isSlotIdChanged":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isFlymeMms()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p2, :cond_8

    .line 8864
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v18, v2

    if-gtz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMmsDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getFileLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/model/SlideshowModel;->parseMmsTypeByText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 8866
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mMessageProtocol:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMmsDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMessageslideshowSize()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    invoke-virtual/range {v2 .. v13}, Lcom/android/mms/data/WorkingMessage;->reSendMms(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;JJIZ)V

    goto :goto_1

    .line 8869
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mMessageProtocol:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMmsDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMessageslideshowSize()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    invoke-virtual/range {v2 .. v13}, Lcom/android/mms/data/WorkingMessage;->reSendMms(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;JJIZ)V

    goto :goto_1

    .line 8872
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isSnsMms()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isSnsSms()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 8873
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mMessageProtocol:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMmsDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMessageslideshowSize()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    invoke-virtual/range {v2 .. v13}, Lcom/android/mms/data/WorkingMessage;->reSendMms(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;JJIZ)V

    goto/16 :goto_1

    .line 8877
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getFileLink()Ljava/lang/String;

    move-result-object v6

    .line 8878
    .local v6, "fileLink":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 8879
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMmsFirstMediaId()J

    move-result-wide v16

    .line 8880
    .local v16, "firstMediaId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-lez v2, :cond_b

    .line 8881
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/part/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMmsFirstMediaId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8883
    .end local v16    # "firstMediaId":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mMessageProtocol:I

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMmsDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getMessageslideshowSize()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    invoke-virtual/range {v2 .. v13}, Lcom/android/mms/data/WorkingMessage;->reSendMms(Landroid/net/Uri;IZLjava/lang/String;Ljava/lang/String;JJIZ)V

    goto/16 :goto_1
.end method

.method public setEditTextSingleLine(Z)V
    .locals 3
    .param p1, "singleLine"    # Z

    .prologue
    .line 9223
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v1}, Lcom/android/mms/view/EditTextEx;->getInputType()I

    move-result v1

    const v2, 0x2000f

    and-int/2addr v1, v2

    const v2, 0x20001

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .line 9225
    .local v0, "isMultipLine":Z
    :goto_0
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 9226
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v1, p1}, Lcom/android/mms/view/EditTextEx;->setSingleLine(Z)V

    .line 9228
    :cond_2
    return-void

    .line 9223
    .end local v0    # "isMultipLine":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final showAlertDialog(Lcom/android/mms/view/MessageListItemBase;)V
    .locals 17
    .param p1, "messageListItem"    # Lcom/android/mms/view/MessageListItemBase;

    .prologue
    .line 8646
    if-nez p1, :cond_1

    .line 8730
    :cond_0
    :goto_0
    return-void

    .line 8650
    :cond_1
    move-object/from16 v10, p1

    .line 8651
    .local v10, "mTempMessageListItem":Lcom/android/mms/view/MessageListItemBase;
    invoke-virtual {v10}, Lcom/android/mms/view/MessageListItemBase;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v11

    .line 8652
    .local v11, "msgItem":Lcom/android/mms/ui/MessageItem;
    if-nez v11, :cond_2

    .line 8653
    const-string v13, "Mms/compose"

    const-string v14, "showAlertDialog():msgItem = null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8656
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/ComposeMessageActivity;->getFailedAddress(Lcom/android/mms/ui/MessageItem;)Ljava/util/ArrayList;

    move-result-object v6

    .line 8657
    .local v6, "failedMessageItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/ui/MessageItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8659
    .local v4, "contactListSize":I
    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v8

    .line 8662
    .local v8, "isMms":Z
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8664
    .local v5, "dialogBilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v9

    .line 8666
    .local v9, "isSnsMsg":Z
    if-eqz v8, :cond_5

    if-nez v9, :cond_5

    .line 8667
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0188

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8674
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->isFlymeOpen(Z)Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mContactHeader:Lcom/android/mms/view/MzContactHeaderWidget;

    invoke-virtual {v13}, Lcom/android/mms/view/MzContactHeaderWidget;->containsEmail()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 8676
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0181

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/mms/ui/ComposeMessageActivity$69;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6}, Lcom/android/mms/ui/ComposeMessageActivity$69;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8694
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 8696
    .local v3, "contactList":Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_b

    if-eqz v8, :cond_b

    .line 8698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8699
    .local v1, "allr":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    if-ge v7, v13, :cond_8

    .line 8700
    invoke-virtual {v3, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8701
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v7, v13, :cond_4

    .line 8702
    const-string v13, ", "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8699
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 8669
    .end local v1    # "allr":Ljava/lang/StringBuilder;
    .end local v3    # "contactList":Lcom/android/mms/data/ContactList;
    .end local v7    # "i":I
    :cond_5
    if-eqz v9, :cond_6

    const v13, 0x7f0f0209

    :goto_4
    invoke-virtual {v5, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 8670
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0187

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 8669
    :cond_6
    const v13, 0x7f0f0186

    goto :goto_4

    .line 8685
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0181

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/mms/ui/ComposeMessageActivity$70;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6}, Lcom/android/mms/ui/ComposeMessageActivity$70;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 8705
    .restart local v1    # "allr":Ljava/lang/StringBuilder;
    .restart local v3    # "contactList":Lcom/android/mms/data/ContactList;
    .restart local v7    # "i":I
    :cond_8
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f040078

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/mms/view/MmsEllipTextView;

    .line 8707
    .local v12, "view":Lcom/android/mms/view/MmsEllipTextView;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/mms/view/MmsEllipTextView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 8708
    invoke-virtual {v5, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 8718
    .end local v1    # "allr":Ljava/lang/StringBuilder;
    .end local v7    # "i":I
    .end local v12    # "view":Lcom/android/mms/view/MmsEllipTextView;
    :cond_9
    :goto_5
    if-eqz v8, :cond_a

    .line 8719
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v13

    if-nez v13, :cond_0

    .line 8724
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0f0182

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8725
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 8726
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSnsRecipients()Z

    move-result v13

    if-nez v13, :cond_0

    .line 8727
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 8728
    .local v2, "button":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    invoke-static {v2, v13}, Lcom/android/mms/ui/MessageUtils;->setDialogButtonEnabled(Landroid/widget/Button;Z)V

    goto/16 :goto_0

    .line 8710
    .end local v2    # "button":Landroid/widget/Button;
    :cond_b
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_9

    if-nez v8, :cond_9

    .line 8712
    const v13, 0x7f0f0184

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8714
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getAddressName(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_5
.end method

.method public final showAlertDialogForRetrieve(Lcom/android/mms/view/MessageListItemBase;Ljava/lang/String;)V
    .locals 4
    .param p1, "messageListItem"    # Lcom/android/mms/view/MessageListItemBase;
    .param p2, "messageSize"    # Ljava/lang/String;

    .prologue
    .line 8618
    if-nez p1, :cond_0

    .line 8639
    :goto_0
    return-void

    .line 8621
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8622
    .local v0, "dialogBilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f01f2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 8623
    const v1, 0x7f0f01f3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8625
    const v1, 0x7f0f01f4

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$67;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$67;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8632
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$68;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$68;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8638
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showDelProgressDialog(IIZ)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "hasMms"    # Z

    .prologue
    const/16 v2, 0x14

    .line 1735
    const/4 v0, 0x0

    .line 1736
    .local v0, "showDialog":Z
    packed-switch p2, :pswitch_data_0

    .line 1748
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1749
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_1

    .line 1750
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    .line 1751
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0f0155

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1752
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1753
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1755
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 1757
    :cond_2
    return-void

    .line 1738
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1740
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1744
    :pswitch_1
    if-ge p1, v2, :cond_4

    if-eqz p3, :cond_0

    .line 1745
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1736
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showSendFileErrorDialog(II)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "messageRes"    # I

    .prologue
    .line 4221
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4236
    :goto_0
    return-void

    .line 4224
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4225
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4226
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4227
    const v1, 0x7f0f00a8

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$38;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$38;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4234
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1090
    if-ltz p2, :cond_0

    .line 1091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 1097
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    if-eqz v0, :cond_1

    const-string v0, "com.android.contacts.action.MZ_QUICK_CONTACT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x6f

    if-eq p2, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p2, v0, :cond_1

    .line 1101
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideKeyboard()V

    .line 1103
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/mms/MmsBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1104
    return-void
.end method

.method public submitClickPhrase(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 9664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9665
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasRecipient()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->selectSlotId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9666
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChooseQuickPhrase:Ljava/lang/String;

    .line 9667
    const/4 v2, 0x1

    invoke-direct {p0, v4, v3, v3, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded(Landroid/net/Uri;ZZZ)V

    .line 9668
    iput-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mChooseQuickPhrase:Ljava/lang/String;

    .line 9679
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideQuickReplyPopupView()V

    .line 9680
    return-void

    .line 9670
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v2}, Lcom/android/mms/view/EditTextEx;->getSelectionStart()I

    move-result v1

    .line 9671
    .local v1, "posIndex":I
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v2}, Lcom/android/mms/view/EditTextEx;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 9672
    .local v0, "editable":Landroid/text/Editable;
    if-ltz v1, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 9673
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/view/EditTextEx;

    invoke-virtual {v2, p1}, Lcom/android/mms/view/EditTextEx;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9675
    :cond_3
    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method undeliveredMessageDialog(J)V
    .locals 9
    .param p1, "date"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 6019
    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-ltz v1, :cond_0

    .line 6020
    const v1, 0x7f0f0019

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6028
    .local v0, "body":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCurrentActionBarHeight()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->showToast(Ljava/lang/CharSequence;Landroid/content/Context;IIZII)V

    .line 6034
    return-void

    .line 6024
    .end local v0    # "body":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0f001a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "body":Ljava/lang/String;
    goto :goto_0
.end method

.method protected updateOperatorViewState()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 10033
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPhoneOperator:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsImeShowing:Z

    if-nez v1, :cond_1

    .line 10034
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsMultiChoiceMode:Z

    if-eqz v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showBottomPanel(I)V

    .line 10035
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mOperatorOptions:Lcom/android/mms/smartmessage/SmartMessageViewContainer;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSendMsgUsable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/smartmessage/SmartMessageViewContainer;->setEnabled(Z)V

    .line 10039
    :goto_1
    return-void

    .line 10034
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 10037
    :cond_1
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsMultiChoiceMode:Z

    if-eqz v1, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showBottomPanel(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_2
.end method
