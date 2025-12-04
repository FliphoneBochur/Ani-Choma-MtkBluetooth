.class Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlayerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/MediaPlayerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 327
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 328
    const-string v0, "org.codeaurora.music.playersettingsresponse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 329
    const/16 p1, 0xff

    const-string v0, "Response"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 332
    nop

    .line 333
    const-string v0, "PLAYERSETTINGS_RESPONSE"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 336
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 337
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 338
    if-ne p1, v3, :cond_0

    .line 339
    nop

    .line 340
    const-string v2, "Response received for SET_ATTRIBUTE_VALUES"

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    move v2, v5

    goto :goto_0

    .line 338
    :cond_0
    move v2, v4

    .line 342
    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$2100(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x25a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 337
    :cond_1
    move v2, v4

    .line 345
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 347
    nop

    .line 348
    if-eqz p1, :cond_e

    if-eq p1, v5, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    const/4 v6, 0x4

    if-eq p1, v6, :cond_5

    if-eq p1, v3, :cond_2

    goto/16 :goto_5

    .line 391
    :cond_2
    const-string p1, "AttribValuePairs"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 392
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$2200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;[B)V

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SET_ATTRIBUTE_VALUES: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NewAvrcpMediaPlayerSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-eqz v2, :cond_4

    .line 395
    nop

    .line 396
    const-string p2, "NewAvrcpMediaPlayerSettings"

    const-string v0, "Respond to SET_ATTRIBUTE_VALUES request"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$2300(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;[B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 398
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p1, v6}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1400(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;I)V

    goto :goto_2

    .line 400
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p1, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1400(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;I)V

    .line 403
    :cond_4
    :goto_2
    const-string p1, "Send Player app attribute changed update"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 404
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p1, v5}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1300(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;Z)V

    .line 405
    goto/16 :goto_5

    .line 362
    :cond_5
    const-string p1, "AttribValuePairs"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 363
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$2200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;[B)V

    .line 364
    array-length p1, p1

    int-to-byte p1, p1

    .line 365
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET_ATTRIBUTE_VALUES "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 366
    nop

    .line 367
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length p1, p1

    mul-int/2addr p1, v0

    new-array p2, p1, [B

    .line 368
    move v2, v4

    move v3, v2

    :goto_3
    iget-object v7, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length v7, v7

    if-ge v2, v7, :cond_a

    .line 369
    add-int/lit8 v7, v3, 0x1

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v8}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v8

    iget-object v8, v8, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    aget-byte v8, v8, v2

    aput-byte v8, p2, v3

    .line 370
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    aget-byte v3, v3, v2

    if-eq v3, v5, :cond_9

    if-eq v3, v0, :cond_8

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_6

    .line 384
    add-int/lit8 v3, v7, 0x1

    aput-byte v4, p2, v7

    goto :goto_4

    .line 381
    :cond_6
    add-int/lit8 v3, v7, 0x1

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v8}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1100(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    move-result-object v8

    iget-byte v8, v8, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->scan_value:B

    aput-byte v8, p2, v7

    .line 382
    goto :goto_4

    .line 378
    :cond_7
    add-int/lit8 v3, v7, 0x1

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v8}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1100(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    move-result-object v8

    iget-byte v8, v8, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->shuffle_value:B

    aput-byte v8, p2, v7

    .line 379
    goto :goto_4

    .line 375
    :cond_8
    add-int/lit8 v3, v7, 0x1

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v8}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1100(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    move-result-object v8

    iget-byte v8, v8, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->repeat_value:B

    aput-byte v8, p2, v7

    .line 376
    goto :goto_4

    .line 372
    :cond_9
    add-int/lit8 v3, v7, 0x1

    iget-object v8, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v8}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1100(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    move-result-object v8

    iget-byte v8, v8, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->eq_value:B

    aput-byte v8, p2, v7

    .line 373
    nop

    .line 368
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 388
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    int-to-byte p1, p1

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;B[B)V

    .line 389
    goto/16 :goto_5

    .line 414
    :cond_b
    const-string p1, "GET_VALUE_TEXT"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 415
    const-string p1, "ValueStrings"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 416
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    .line 417
    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length v2, p1

    .line 416
    invoke-static {p2, v0, v1, v2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1800(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;I[BI[Ljava/lang/String;)V

    .line 418
    goto/16 :goto_5

    .line 407
    :cond_c
    const-string p1, "GET_ATTRIBUTE_TEXT"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 408
    const-string p1, "AttributeStrings"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 409
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    .line 410
    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length v2, p1

    .line 409
    invoke-static {p2, v0, v1, v2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1500(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;I[BI[Ljava/lang/String;)V

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPlayerSettings.attrIds "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object p2

    iget-object p2, p2, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 412
    goto :goto_5

    .line 356
    :cond_d
    const-string p1, "Values"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 357
    array-length p2, p1

    int-to-byte p2, p2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_VALUE_IDS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v0, p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$800(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;B[B)V

    .line 360
    goto :goto_5

    .line 350
    :cond_e
    const-string p1, "Attributes"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 351
    array-length p2, p1

    int-to-byte p2, p2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_ATTRIBUTE_IDS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v0, p2, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$500(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;B[B)V

    .line 354
    goto :goto_5

    .line 345
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 423
    :cond_f
    :goto_5
    return-void
.end method
