.class Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field private mIsInterrupted:Z

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 588
    const-string p1, "Bluetooth Share Service"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 589
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->mIsInterrupted:Z

    .line 590
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->mIsInterrupted:Z

    .line 596
    const-string v0, "BtOppService"

    const-string v1, "OPP UpdateThread interrupted "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 599
    return-void
.end method

.method public run()V
    .locals 10

    .line 604
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 606
    :goto_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->mIsInterrupted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 607
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v0

    .line 608
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object v2

    if-ne v2, p0, :cond_e

    .line 613
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    const-string v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pendingUpdate is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " sListenStarted is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 615
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$400(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isInterrupted :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->mIsInterrupted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$502(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .line 619
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$602(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 620
    monitor-exit v0

    return-void

    .line 622
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1902(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 623
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    nop

    .line 626
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 630
    goto :goto_1

    .line 628
    :catch_0
    move-exception v0

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLite exception occur : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BtOppService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_1
    if-nez v3, :cond_2

    .line 633
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$602(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 634
    return-void

    .line 637
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 639
    nop

    .line 641
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    .line 643
    const-string v2, "_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move v4, v1

    .line 659
    :goto_2
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$400(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 717
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$700(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 719
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 720
    goto/16 :goto_0

    .line 660
    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 663
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_5

    .line 664
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 665
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Array update: trimming "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BtOppService"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_5
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v5, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2100(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto :goto_2

    .line 672
    :cond_6
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 674
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_8

    .line 675
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 676
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Array update: inserting "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " @ "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BtOppService"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 680
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 681
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto/16 :goto_5

    .line 683
    :cond_8
    nop

    .line 684
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_9

    .line 685
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    goto :goto_4

    .line 684
    :cond_9
    move v6, v1

    .line 688
    :goto_4
    if-ge v6, v5, :cond_b

    .line 689
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Array update: removing "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BtOppService"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_a
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v5, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2100(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto :goto_5

    .line 694
    :cond_b
    if-ne v6, v5, :cond_c

    .line 696
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 697
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2400(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    .line 698
    add-int/lit8 v4, v4, 0x1

    .line 699
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 700
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_5

    .line 704
    :cond_c
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Array update: appending "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " @ "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BtOppService"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 709
    add-int/lit8 v4, v4, 0x1

    .line 710
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 711
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    .line 714
    :goto_5
    goto/16 :goto_2

    .line 609
    :cond_e
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$602(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 610
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in BluetoothOppService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 722
    :cond_f
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$602(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 723
    return-void
.end method
