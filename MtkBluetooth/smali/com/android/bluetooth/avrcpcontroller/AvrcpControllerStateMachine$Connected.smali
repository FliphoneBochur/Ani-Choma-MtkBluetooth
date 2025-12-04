.class Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;
.super Lcom/android/bluetooth/statemachine/State;
.source "AvrcpControllerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connected"
.end annotation


# static fields
.field private static final STATE_TAG:Ljava/lang/String; = "Avrcp.ConnectedAvrcpController"


# instance fields
.field private mCurrentlyHeldKey:I

.field final synthetic this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    .line 447
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->mCurrentlyHeldKey:I

    return-void
.end method

.method private isHoldableKey(I)Z
    .locals 1

    .line 691
    const/16 v0, 0x48

    if-eq p1, v0, :cond_1

    const/16 v0, 0x49

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private declared-synchronized passThru(I)V
    .locals 5

    monitor-enter p0

    .line 658
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msgPassThru "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 660
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->mCurrentlyHeldKey:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v3, v3, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    iget v4, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->mCurrentlyHeldKey:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sendPassThroughCommandNative([BII)Z

    .line 665
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->mCurrentlyHeldKey:I

    if-ne v0, p1, :cond_0

    .line 667
    iput v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->mCurrentlyHeldKey:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    monitor-exit p0

    return-void

    .line 673
    :cond_0
    :try_start_1
    iput v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->mCurrentlyHeldKey:I

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v3, v3, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    invoke-virtual {v0, v3, p1, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sendPassThroughCommandNative([BII)Z

    .line 681
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->isHoldableKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->mCurrentlyHeldKey:I

    goto :goto_0

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v2, v2, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sendPassThroughCommandNative([BII)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    :goto_0
    monitor-exit p0

    return-void

    .line 657
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private processAvailablePlayerChanged()V
    .locals 2

    .line 710
    const-string v0, "processAvailablePlayerChanged"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    .line 712
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setExpectedChildren(I)V

    .line 713
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChanged(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 714
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeUnusedArtworkFromBrowseTree()V

    .line 715
    return-void
.end method

.method private processPlayItem(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V
    .locals 7

    .line 647
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->setActive(Z)Z

    .line 648
    if-nez p1, :cond_0

    .line 649
    const-string p1, "AvrcpControllerStateMachine"

    const-string v0, "Invalid item to play"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v1, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v2, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    .line 652
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getScope()B

    move-result v3

    .line 653
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->getBluetoothID()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 651
    invoke-virtual/range {v1 .. v6}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->playItemNative([BBJI)V

    .line 655
    :goto_0
    return-void
.end method

.method private setRepeat(I)V
    .locals 7

    .line 696
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    new-array v6, v2, [B

    .line 698
    invoke-static {v5, p1}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mapAvrcpPlayerSettingstoBTattribVal(II)B

    move-result p1

    aput-byte p1, v6, v4

    .line 696
    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->setPlayerApplicationSettingValuesNative([BB[B[B)V

    .line 700
    return-void
.end method

.method private setShuffle(I)V
    .locals 7

    .line 703
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x3

    aput-byte v5, v3, v4

    new-array v6, v2, [B

    .line 705
    invoke-static {v5, p1}, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;->mapAvrcpPlayerSettingstoBTattribVal(II)B

    move-result p1

    aput-byte p1, v6, v4

    .line 703
    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->setPlayerApplicationSettingValuesNative([BB[B[B)V

    .line 707
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mMostRecentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$100(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Z

    .line 453
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->broadcastConnectionStateChanged(I)V

    .line 454
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->connectCoverArt()V

    goto :goto_0

    .line 456
    :cond_0
    const-string v0, "ReEnteringConnected"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 458
    :goto_0
    invoke-super {p0}, Lcom/android/bluetooth/statemachine/State;->enter()V

    .line 459
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avrcp.ConnectedAvrcpController processMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_10

    const/16 v1, 0xd7

    const/4 v3, 0x0

    if-eq v0, v1, :cond_c

    const/16 v1, 0x190

    if-eq v0, v1, :cond_8

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 641
    invoke-super {p0, p1}, Lcom/android/bluetooth/statemachine/State;->processMessage(Landroid/os/Message;)Z

    move-result p1

    return p1

    .line 494
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->setRepeat(I)V

    .line 495
    return v2

    .line 498
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->setShuffle(I)V

    .line 499
    return v2

    .line 490
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->passThru(I)V

    .line 491
    return v2

    .line 486
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->processPlayItem(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 487
    return v2

    .line 481
    :pswitch_4
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mGetFolderList:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$GetFolderList;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 482
    return v2

    .line 602
    :pswitch_5
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtPsm:I

    .line 603
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->connectCoverArt()V

    .line 604
    return v2

    .line 598
    :pswitch_6
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->processAvailablePlayerChanged()V

    .line 599
    return v2

    .line 592
    :pswitch_7
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->setCurrentPlayerApplicationSettings(Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;)V

    .line 594
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1000(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 595
    return v2

    .line 586
    :pswitch_8
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->setSupportedPlayerApplicationSettings(Lcom/android/bluetooth/avrcpcontroller/PlayerApplicationSettings;)V

    .line 588
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1000(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 589
    return v2

    .line 516
    :pswitch_9
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->setPlayStatus(I)V

    .line 517
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->isActive()Z

    move-result p1

    const/16 v0, 0x46

    const/16 v3, 0x12e

    if-nez p1, :cond_0

    .line 518
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1, v3, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 520
    return v2

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    .line 524
    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 526
    nop

    .line 527
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v4

    .line 528
    if-eqz v4, :cond_1

    .line 529
    invoke-virtual {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getFocusState()I

    move-result v4

    goto :goto_0

    .line 528
    :cond_1
    move v4, v1

    .line 532
    :goto_0
    if-ne v4, v1, :cond_2

    .line 533
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1, v3, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 535
    return v2

    .line 538
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    if-nez v4, :cond_4

    .line 540
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$900(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 541
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mSessionCallbacks:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    goto :goto_1

    .line 543
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1, v3, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(II)V

    .line 547
    :cond_4
    :goto_1
    return v2

    .line 550
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eq v0, v1, :cond_5

    .line 551
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->setPlayTime(I)V

    .line 552
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1000(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 554
    :cond_5
    return v2

    .line 502
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    .line 503
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getCurrentTrack()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v1, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$800(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    .line 505
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->updateCurrentTrack(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    .line 506
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->isActive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 507
    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->trackChanged(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    .line 509
    :cond_6
    if-eqz v0, :cond_7

    .line 510
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;->getCoverArtUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeUnusedArtwork(Ljava/lang/String;)V

    .line 511
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeUnusedArtworkFromBrowseTree()V

    .line 513
    :cond_7
    return v2

    .line 474
    :pswitch_c
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$502(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)I

    .line 475
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDeviceAddress:[B

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    .line 477
    invoke-static {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$600(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)I

    move-result v1

    iget-object v4, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$500(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)I

    move-result v4

    .line 475
    invoke-virtual {p1, v0, v3, v1, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->sendRegisterAbsVolRspNative([BBII)V

    .line 478
    return v2

    .line 466
    :pswitch_d
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$208(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)I

    .line 467
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$300(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)V

    .line 468
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessageDelayed(IJ)V

    .line 470
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$400(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;II)V

    .line 471
    return v2

    .line 607
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;

    .line 609
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$DownloadEvent;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received image for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->notifyImageDownload(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    .line 616
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->isActive()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 617
    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    .line 618
    invoke-static {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getCurrentTrack()Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;

    move-result-object v3

    .line 617
    invoke-static {v3}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->trackChanged(Lcom/android/bluetooth/avrcpcontroller/AvrcpItem;)V

    .line 623
    :cond_9
    iget-object v3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v3, v3, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    invoke-virtual {v3, v0, p1}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->notifyImageDownload(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/Set;

    move-result-object p1

    .line 624
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    .line 625
    iget-object v5, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v5, v4}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1300(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 626
    goto :goto_2

    .line 629
    :cond_a
    if-nez v1, :cond_b

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 630
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeUnusedArtwork(Ljava/lang/String;)V

    .line 631
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeUnusedArtworkFromBrowseTree()V

    .line 634
    :cond_b
    return v2

    .line 557
    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1102(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;I)I

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AddressedPlayer = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1100(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v3}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    .line 564
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->isActive()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 565
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChanged(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 568
    :cond_d
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1200(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1100(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    .line 569
    if-eqz p1, :cond_f

    .line 570
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v1, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$702(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    .line 572
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object p1

    const/16 v1, 0x41

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->supportsFeature(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 573
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x12c

    iget-object v3, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object v3, v3, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mNowPlayingNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v1, v3}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 575
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$700(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpPlayer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    goto :goto_3

    .line 577
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Addressed player changed to unknown ID="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$1100(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 578
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-virtual {p1, v3}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setCached(Z)V

    .line 579
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;->setExpectedChildren(I)V

    .line 580
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mBrowseTree:Lcom/android/bluetooth/avrcpcontroller/BrowseTree;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/BrowseTree;->mRootNode:Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/BluetoothMediaBrowserService;->notifyChanged(Lcom/android/bluetooth/avrcpcontroller/BrowseTree$BrowseNode;)V

    .line 582
    :goto_3
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->removeUnusedArtworkFromBrowseTree()V

    .line 583
    return v2

    .line 637
    :cond_10
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDisconnecting:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 638
    return v2

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
