.class Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;
.super Landroid/bluetooth/IBluetoothGatt$Stub;
.source "GattService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothGattBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0

    .line 476
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGatt$Stub;-><init>()V

    .line 477
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 478
    return-void
.end method

.method private getService()Lcom/android/bluetooth/gatt/GattService;
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/bluetooth/gatt/GattService;->access$200(Lcom/android/bluetooth/gatt/GattService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    return-object v0

    .line 489
    :cond_0
    const-string v0, "BtGatt.GattService"

    const-string v1, "getService() - Service requested, but not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addService(ILandroid/bluetooth/BluetoothGattService;)V
    .locals 1

    .line 832
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 833
    if-nez v0, :cond_0

    .line 834
    return-void

    .line 837
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->addService(ILandroid/bluetooth/BluetoothGattService;)V

    .line 838
    return-void
.end method

.method public beginReliableWrite(ILjava/lang/String;)V
    .locals 1

    .line 706
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 707
    if-nez v0, :cond_0

    .line 708
    return-void

    .line 710
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->beginReliableWrite(ILjava/lang/String;)V

    .line 711
    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 483
    return-void
.end method

.method public clearServices(I)V
    .locals 1

    .line 851
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 852
    if-nez v0, :cond_0

    .line 853
    return-void

    .line 855
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->clearServices(I)V

    .line 856
    return-void
.end method

.method public clientConnect(ILjava/lang/String;ZIZI)V
    .locals 7

    .line 593
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 594
    if-nez v0, :cond_0

    .line 595
    return-void

    .line 597
    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->clientConnect(ILjava/lang/String;ZIZI)V

    .line 598
    return-void
.end method

.method public clientDisconnect(ILjava/lang/String;)V
    .locals 1

    .line 602
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 603
    if-nez v0, :cond_0

    .line 604
    return-void

    .line 606
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->clientDisconnect(ILjava/lang/String;)V

    .line 607
    return-void
.end method

.method public clientReadPhy(ILjava/lang/String;)V
    .locals 1

    .line 621
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 622
    if-nez v0, :cond_0

    .line 623
    return-void

    .line 625
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->clientReadPhy(ILjava/lang/String;)V

    .line 626
    return-void
.end method

.method public clientSetPreferredPhy(ILjava/lang/String;III)V
    .locals 6

    .line 612
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 613
    if-nez v0, :cond_0

    .line 614
    return-void

    .line 616
    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/GattService;->clientSetPreferredPhy(ILjava/lang/String;III)V

    .line 617
    return-void
.end method

.method public configureMTU(ILjava/lang/String;I)V
    .locals 1

    .line 743
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 744
    if-nez v0, :cond_0

    .line 745
    return-void

    .line 747
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->configureMTU(ILjava/lang/String;I)V

    .line 748
    return-void
.end method

.method public connectionParameterUpdate(ILjava/lang/String;I)V
    .locals 1

    .line 753
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 754
    if-nez v0, :cond_0

    .line 755
    return-void

    .line 757
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->connectionParameterUpdate(ILjava/lang/String;I)V

    .line 758
    return-void
.end method

.method public disconnectAll()V
    .locals 1

    .line 996
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 997
    if-nez v0, :cond_0

    .line 998
    return-void

    .line 1000
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->disconnectAll()V

    .line 1001
    return-void
.end method

.method public discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 1

    .line 648
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 649
    if-nez v0, :cond_0

    .line 650
    return-void

    .line 652
    :cond_0
    invoke-virtual {p3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->discoverServiceByUuid(ILjava/lang/String;Ljava/util/UUID;)V

    .line 653
    return-void
.end method

.method public discoverServices(ILjava/lang/String;)V
    .locals 1

    .line 639
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 640
    if-nez v0, :cond_0

    .line 641
    return-void

    .line 643
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->discoverServices(ILjava/lang/String;)V

    .line 644
    return-void
.end method

.method public enableAdvertisingSet(IZII)V
    .locals 1

    .line 912
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 913
    if-nez v0, :cond_0

    .line 914
    return-void

    .line 916
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->enableAdvertisingSet(IZII)V

    .line 917
    return-void
.end method

.method public endReliableWrite(ILjava/lang/String;Z)V
    .locals 1

    .line 715
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 716
    if-nez v0, :cond_0

    .line 717
    return-void

    .line 719
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->endReliableWrite(ILjava/lang/String;Z)V

    .line 720
    return-void
.end method

.method public flushPendingBatchResults(I)V
    .locals 1

    .line 583
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 584
    if-nez v0, :cond_0

    .line 585
    return-void

    .line 587
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->flushPendingBatchResults(I)V

    .line 588
    return-void
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

    .line 495
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 496
    if-nez v0, :cond_0

    .line 497
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 499
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getOwnAddress(I)V
    .locals 1

    .line 902
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 903
    if-nez v0, :cond_0

    .line 904
    return-void

    .line 906
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->getOwnAddress(I)V

    .line 907
    return-void
.end method

.method public leConnectionUpdate(ILjava/lang/String;IIIIII)V
    .locals 9

    .line 765
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 766
    if-nez v0, :cond_0

    .line 767
    return-void

    .line 769
    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->leConnectionUpdate(ILjava/lang/String;IIIIII)V

    .line 773
    return-void
.end method

.method public numHwTrackFiltersAvailable()I
    .locals 1

    .line 1014
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 1015
    if-nez v0, :cond_0

    .line 1016
    const/4 v0, 0x0

    return v0

    .line 1018
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->numHwTrackFiltersAvailable()I

    move-result v0

    return v0
.end method

.method public readCharacteristic(ILjava/lang/String;II)V
    .locals 1

    .line 657
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 658
    if-nez v0, :cond_0

    .line 659
    return-void

    .line 661
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->readCharacteristic(ILjava/lang/String;II)V

    .line 662
    return-void
.end method

.method public readDescriptor(ILjava/lang/String;II)V
    .locals 1

    .line 687
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 688
    if-nez v0, :cond_0

    .line 689
    return-void

    .line 691
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->readDescriptor(ILjava/lang/String;II)V

    .line 692
    return-void
.end method

.method public readRemoteRssi(ILjava/lang/String;)V
    .locals 1

    .line 734
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 735
    if-nez v0, :cond_0

    .line 736
    return-void

    .line 738
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->readRemoteRssi(ILjava/lang/String;)V

    .line 739
    return-void
.end method

.method public readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;III)V
    .locals 7

    .line 667
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 668
    if-nez v0, :cond_0

    .line 669
    return-void

    .line 671
    :cond_0
    invoke-virtual {p3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    move v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->readUsingCharacteristicUuid(ILjava/lang/String;Ljava/util/UUID;III)V

    .line 673
    return-void
.end method

.method public refreshDevice(ILjava/lang/String;)V
    .locals 1

    .line 630
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 631
    if-nez v0, :cond_0

    .line 632
    return-void

    .line 634
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->refreshDevice(ILjava/lang/String;)V

    .line 635
    return-void
.end method

.method public registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 1

    .line 504
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 505
    if-nez v0, :cond_0

    .line 506
    return-void

    .line 508
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 509
    return-void
.end method

.method public registerForNotification(ILjava/lang/String;IZ)V
    .locals 1

    .line 725
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 726
    if-nez v0, :cond_0

    .line 727
    return-void

    .line 729
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->registerForNotification(ILjava/lang/String;IZ)V

    .line 730
    return-void
.end method

.method public registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 524
    if-nez v0, :cond_0

    .line 525
    return-void

    .line 527
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;)V

    .line 528
    return-void
.end method

.method public registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 1

    .line 777
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 778
    if-nez v0, :cond_0

    .line 779
    return-void

    .line 781
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    .line 782
    return-void
.end method

.method public registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    .locals 1

    .line 978
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 979
    if-nez v0, :cond_0

    .line 980
    return-void

    .line 982
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    .line 983
    return-void
.end method

.method public removeService(II)V
    .locals 1

    .line 842
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 843
    if-nez v0, :cond_0

    .line 844
    return-void

    .line 846
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->removeService(II)V

    .line 847
    return-void
.end method

.method public sendNotification(ILjava/lang/String;IZ[B)V
    .locals 6

    .line 871
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 872
    if-nez v0, :cond_0

    .line 873
    return-void

    .line 875
    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/GattService;->sendNotification(ILjava/lang/String;IZ[B)V

    .line 876
    return-void
.end method

.method public sendResponse(ILjava/lang/String;III[B)V
    .locals 7

    .line 861
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 862
    if-nez v0, :cond_0

    .line 863
    return-void

    .line 865
    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->sendResponse(ILjava/lang/String;III[B)V

    .line 866
    return-void
.end method

.method public serverConnect(ILjava/lang/String;ZI)V
    .locals 1

    .line 795
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 796
    if-nez v0, :cond_0

    .line 797
    return-void

    .line 799
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->serverConnect(ILjava/lang/String;ZI)V

    .line 800
    return-void
.end method

.method public serverDisconnect(ILjava/lang/String;)V
    .locals 1

    .line 804
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 805
    if-nez v0, :cond_0

    .line 806
    return-void

    .line 808
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->serverDisconnect(ILjava/lang/String;)V

    .line 809
    return-void
.end method

.method public serverReadPhy(ILjava/lang/String;)V
    .locals 1

    .line 823
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 824
    if-nez v0, :cond_0

    .line 825
    return-void

    .line 827
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->serverReadPhy(ILjava/lang/String;)V

    .line 828
    return-void
.end method

.method public serverSetPreferredPhy(ILjava/lang/String;III)V
    .locals 6

    .line 814
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 815
    if-nez v0, :cond_0

    .line 816
    return-void

    .line 818
    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/GattService;->serverSetPreferredPhy(ILjava/lang/String;III)V

    .line 819
    return-void
.end method

.method public setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    .locals 1

    .line 921
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 922
    if-nez v0, :cond_0

    .line 923
    return-void

    .line 925
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 926
    return-void
.end method

.method public setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V
    .locals 1

    .line 940
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 941
    if-nez v0, :cond_0

    .line 942
    return-void

    .line 944
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V

    .line 945
    return-void
.end method

.method public setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    .locals 1

    .line 959
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 960
    if-nez v0, :cond_0

    .line 961
    return-void

    .line 963
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 964
    return-void
.end method

.method public setPeriodicAdvertisingEnable(IZ)V
    .locals 1

    .line 968
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 969
    if-nez v0, :cond_0

    .line 970
    return-void

    .line 972
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->setPeriodicAdvertisingEnable(IZ)V

    .line 973
    return-void
.end method

.method public setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .locals 1

    .line 950
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 951
    if-nez v0, :cond_0

    .line 952
    return-void

    .line 954
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V

    .line 955
    return-void
.end method

.method public setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V
    .locals 1

    .line 930
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 931
    if-nez v0, :cond_0

    .line 932
    return-void

    .line 934
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 935
    return-void
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V
    .locals 9

    .line 883
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 884
    if-nez v0, :cond_0

    .line 885
    return-void

    .line 887
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 889
    return-void
.end method

.method public startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 543
    if-nez v0, :cond_0

    .line 544
    return-void

    .line 546
    :cond_0
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 555
    if-nez v0, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/GattService;->registerPiAndStartScan(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V
    .locals 1

    .line 893
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 894
    if-nez v0, :cond_0

    .line 895
    return-void

    .line 897
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 898
    return-void
.end method

.method public stopScan(I)V
    .locals 1

    .line 574
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 575
    if-nez v0, :cond_0

    .line 576
    return-void

    .line 578
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->stopScan(I)V

    .line 579
    return-void
.end method

.method public stopScanForIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 566
    if-nez v0, :cond_0

    .line 567
    return-void

    .line 569
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->stopScan(Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method public unregAll()V
    .locals 1

    .line 1005
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 1006
    if-nez v0, :cond_0

    .line 1007
    return-void

    .line 1009
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->unregAll()V

    .line 1010
    return-void
.end method

.method public unregisterClient(I)V
    .locals 1

    .line 513
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 514
    if-nez v0, :cond_0

    .line 515
    return-void

    .line 517
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    .line 518
    return-void
.end method

.method public unregisterScanner(I)V
    .locals 1

    .line 532
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 533
    if-nez v0, :cond_0

    .line 534
    return-void

    .line 536
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterScanner(I)V

    .line 537
    return-void
.end method

.method public unregisterServer(I)V
    .locals 1

    .line 786
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 787
    if-nez v0, :cond_0

    .line 788
    return-void

    .line 790
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterServer(I)V

    .line 791
    return-void
.end method

.method public unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    .locals 1

    .line 987
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 988
    if-nez v0, :cond_0

    .line 989
    return-void

    .line 991
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    .line 992
    return-void
.end method

.method public writeCharacteristic(ILjava/lang/String;III[B)V
    .locals 7

    .line 678
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 679
    if-nez v0, :cond_0

    .line 680
    return-void

    .line 682
    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->writeCharacteristic(ILjava/lang/String;III[B)V

    .line 683
    return-void
.end method

.method public writeDescriptor(ILjava/lang/String;II[B)V
    .locals 6

    .line 697
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 698
    if-nez v0, :cond_0

    .line 699
    return-void

    .line 701
    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/GattService;->writeDescriptor(ILjava/lang/String;II[B)V

    .line 702
    return-void
.end method
