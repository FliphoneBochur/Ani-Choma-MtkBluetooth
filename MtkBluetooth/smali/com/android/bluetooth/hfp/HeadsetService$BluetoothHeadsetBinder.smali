.class Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;
.super Landroid/bluetooth/IBluetoothHeadset$Stub;
.source "HeadsetService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHeadsetBinder"
.end annotation


# instance fields
.field private volatile mService:Lcom/android/bluetooth/hfp/HeadsetService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 0

    .line 512
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;-><init>()V

    .line 513
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 514
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 4

    .line 522
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 523
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "HeadsetService"

    if-nez v1, :cond_0

    .line 524
    const-string v0, "Headset call not allowed for non-active user"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-object v2

    .line 527
    :cond_0
    if-nez v0, :cond_1

    .line 528
    const-string v0, "Service is null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-object v2

    .line 531
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 532
    const-string v0, "Service is not alive"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-object v2

    .line 535
    :cond_2
    return-object v0
.end method


# virtual methods
.method public clccResponse(IIIIZLjava/lang/String;I)V
    .locals 8

    .line 744
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 745
    if-nez v0, :cond_0

    .line 746
    return-void

    .line 748
    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/bluetooth/hfp/HeadsetService;->access$600(Lcom/android/bluetooth/hfp/HeadsetService;IIIIZLjava/lang/String;I)V

    .line 749
    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 519
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 540
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 541
    if-nez v0, :cond_0

    .line 542
    const/4 p1, 0x0

    return p1

    .line 544
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public connectAudio()Z
    .locals 1

    .line 670
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 671
    if-nez v0, :cond_0

    .line 672
    const/4 v0, 0x0

    return v0

    .line 674
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->connectAudio()Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 549
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 550
    if-nez v0, :cond_0

    .line 551
    const/4 p1, 0x0

    return p1

    .line 553
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public disconnectAudio()Z
    .locals 1

    .line 679
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 680
    if-nez v0, :cond_0

    .line 681
    const/4 v0, 0x0

    return v0

    .line 683
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio()Z

    move-result v0

    return v0
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 772
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 773
    if-nez v0, :cond_0

    .line 774
    const/4 v0, 0x0

    return-object v0

    .line 776
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getAudioRouteAllowed()Z
    .locals 1

    .line 697
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getAudioRouteAllowed()Z

    move-result v0

    return v0

    .line 701
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 661
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 662
    if-nez v0, :cond_0

    .line 663
    const/16 p1, 0xa

    return p1

    .line 665
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 559
    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 562
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 615
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 616
    if-nez v0, :cond_0

    .line 617
    const/4 p1, -0x1

    return p1

    .line 619
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 620
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 576
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 577
    if-nez v0, :cond_0

    .line 578
    const/4 p1, 0x0

    return p1

    .line 580
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 567
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 568
    if-nez v0, :cond_0

    .line 569
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 571
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 605
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 606
    if-nez v0, :cond_0

    .line 607
    const/4 p1, -0x1

    return p1

    .line 609
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 610
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 652
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 653
    if-nez v0, :cond_0

    .line 654
    const/4 p1, 0x0

    return p1

    .line 656
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public isAudioOn()Z
    .locals 1

    .line 643
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 644
    if-nez v0, :cond_0

    .line 645
    const/4 v0, 0x0

    return v0

    .line 647
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result v0

    return v0
.end method

.method public isInbandRingingEnabled()Z
    .locals 1

    .line 781
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 782
    if-nez v0, :cond_0

    .line 783
    const/4 v0, 0x0

    return v0

    .line 785
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isInbandRingingEnabled()Z

    move-result v0

    return v0
.end method

.method public phoneStateChanged(IIILjava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 734
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 735
    if-nez v0, :cond_0

    .line 736
    return-void

    .line 738
    :cond_0
    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/bluetooth/hfp/HeadsetService;->access$500(Lcom/android/bluetooth/hfp/HeadsetService;IIILjava/lang/String;ILjava/lang/String;Z)V

    .line 739
    return-void
.end method

.method public sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 754
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 755
    if-nez v0, :cond_0

    .line 756
    const/4 p1, 0x0

    return p1

    .line 758
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->access$700(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 763
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 764
    if-nez v0, :cond_0

    .line 765
    const/4 p1, 0x0

    return p1

    .line 767
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public setAudioRouteAllowed(Z)V
    .locals 1

    .line 688
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 689
    if-nez v0, :cond_0

    .line 690
    return-void

    .line 692
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setAudioRouteAllowed(Z)V

    .line 693
    return-void
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 595
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 596
    if-nez v0, :cond_0

    .line 597
    const/4 p1, 0x0

    return p1

    .line 599
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 600
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public setForceScoAudio(Z)V
    .locals 1

    .line 706
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 707
    if-nez v0, :cond_0

    .line 708
    return-void

    .line 710
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setForceScoAudio(Z)V

    .line 711
    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 585
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 586
    if-nez v0, :cond_0

    .line 587
    const/4 p1, 0x0

    return p1

    .line 589
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 590
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public startScoUsingVirtualVoiceCall()Z
    .locals 1

    .line 715
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 716
    if-nez v0, :cond_0

    .line 717
    const/4 v0, 0x0

    return v0

    .line 719
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->access$400(Lcom/android/bluetooth/hfp/HeadsetService;)Z

    move-result v0

    return v0
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 625
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 626
    if-nez v0, :cond_0

    .line 627
    const/4 p1, 0x0

    return p1

    .line 629
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public stopScoUsingVirtualVoiceCall()Z
    .locals 1

    .line 724
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 725
    if-nez v0, :cond_0

    .line 726
    const/4 v0, 0x0

    return v0

    .line 728
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->stopScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 634
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 635
    if-nez v0, :cond_0

    .line 636
    const/4 p1, 0x0

    return p1

    .line 638
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method
