.class final Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;
.super Landroid/os/Handler;
.source "MediaPlayerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/MediaPlayerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlayerSettingsMessageHandler"
.end annotation


# static fields
.field private static final MESSAGE_PLAYERSETTINGS_TIMEOUT:I = 0x25a


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;Landroid/os/Looper;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    .line 214
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 215
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x25a

    if-eq v0, v1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message on timeout handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewAvrcpMediaPlayerSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 225
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 226
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    monitor-exit v0

    return-void

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    const-string v0, "handle Message MESSAGE_PLAYERSETTINGS_TIMEOUT"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 233
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_11

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_e

    const/4 v4, 0x0

    if-eq v0, v2, :cond_a

    if-eq v0, v1, :cond_7

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_5

    .line 272
    :cond_2
    const-string v0, "SET_ATTRIBUTE_VALUES timeout"

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v0, v3}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1300(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;Z)V

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1400(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;I)V

    .line 275
    goto/16 :goto_5

    .line 256
    :cond_3
    const-string p1, "GET_ATTRIBUTE_VALUES timeout"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 257
    nop

    .line 258
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length p1, p1

    mul-int/2addr p1, v2

    new-array v0, p1, [B

    .line 259
    move v3, v4

    move v5, v3

    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v6}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length v6, v6

    if-ge v3, v6, :cond_6

    .line 260
    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    aget-byte v7, v7, v3

    aput-byte v7, v0, v5

    .line 261
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    aget-byte v5, v5, v3

    if-ne v5, v2, :cond_4

    .line 262
    add-int/lit8 v5, v6, 0x1

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1100(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    move-result-object v7

    iget-byte v7, v7, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->repeat_value:B

    aput-byte v7, v0, v6

    goto :goto_1

    .line 263
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    aget-byte v5, v5, v3

    if-ne v5, v1, :cond_5

    .line 264
    add-int/lit8 v5, v6, 0x1

    iget-object v7, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v7}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1100(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;

    move-result-object v7

    iget-byte v7, v7, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->shuffle_value:B

    aput-byte v7, v0, v6

    goto :goto_1

    .line 266
    :cond_5
    add-int/lit8 v5, v6, 0x1

    aput-byte v4, v0, v6

    .line 259
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    int-to-byte p1, p1

    invoke-static {v1, p1, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1200(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;B[B)V

    .line 270
    goto/16 :goto_5

    .line 293
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET_VALUE_TEXT timeout;msg.arg2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 294
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_8

    goto :goto_2

    .line 300
    :cond_8
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1900()[B

    move-result-object v0

    array-length v0, v0

    .line 301
    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1900()[B

    move-result-object v1

    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$2000()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$2000()[Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1800(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;I[BI[Ljava/lang/String;)V

    goto :goto_2

    .line 296
    :cond_9
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1600()[B

    move-result-object v0

    array-length v0, v0

    .line 297
    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1600()[B

    move-result-object v1

    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1700()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-static {}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1700()[Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1800(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;I[BI[Ljava/lang/String;)V

    .line 298
    nop

    .line 304
    :goto_2
    goto/16 :goto_5

    .line 277
    :cond_a
    const-string p1, "GET_ATTRIBUTE_TEXT timeout"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length p1, p1

    new-array v0, p1, [Ljava/lang/String;

    .line 279
    nop

    :goto_3
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length v3, v3

    if-ge v4, v3, :cond_d

    .line 280
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    aget-byte v3, v3, v4

    if-eq v3, v2, :cond_c

    if-eq v3, v1, :cond_b

    goto :goto_4

    .line 285
    :cond_b
    const-string v3, "Shuffle"

    aput-object v3, v0, v4

    goto :goto_4

    .line 282
    :cond_c
    const-string v3, "Repeat"

    aput-object v3, v0, v4

    .line 283
    nop

    .line 279
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 289
    :cond_d
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    .line 290
    invoke-static {v3}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attrIds:[B

    .line 289
    invoke-static {v1, v2, v3, p1, v0}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1500(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;I[BI[Ljava/lang/String;)V

    .line 291
    goto :goto_5

    .line 239
    :cond_e
    const-string p1, "GET_VALUE_IDS timeout"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$600(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;

    move-result-object p1

    iget-byte p1, p1, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->attr:B

    if-eq p1, v2, :cond_10

    if-eq p1, v1, :cond_f

    .line 250
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1000(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    .line 251
    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$1000(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B

    move-result-object v1

    .line 250
    invoke-static {p1, v0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$800(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;B[B)V

    .line 252
    goto :goto_5

    .line 246
    :cond_f
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$900(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    .line 247
    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$900(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B

    move-result-object v1

    .line 246
    invoke-static {p1, v0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$800(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;B[B)V

    .line 248
    goto :goto_5

    .line 242
    :cond_10
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$700(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    .line 243
    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$700(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B

    move-result-object v1

    .line 242
    invoke-static {p1, v0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$800(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;B[B)V

    .line 244
    goto :goto_5

    .line 235
    :cond_11
    const-string p1, "GET_ATTRIBUTE_IDS timeout"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$300(Ljava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$400(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettingsMessageHandler;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$400(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings;->access$500(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;B[B)V

    .line 237
    nop

    .line 308
    :goto_5
    return-void

    .line 230
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
