.class Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "BluetoothOppService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;Landroid/os/Handler;)V
    .locals 0

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mContext:Landroid/content/Context;

    .line 1139
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 1140
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    .line 1141
    new-instance p1, Landroid/media/MediaScannerConnection;

    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 1142
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1143
    const-string p1, "BtOppService"

    const-string p2, "Connecting to MediaScannerConnection "

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 1146
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .line 1150
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    const-string v0, "BtOppService"

    const-string v1, "MediaScannerConnection onMediaScannerConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4

    .line 1159
    const-string v0, "MediaScannerConnection disconnect"

    const-string v1, "BtOppService"

    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1160
    const-string v2, "MediaScannerConnection onScanCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaScannerConnection path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaScannerConnection Uri is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    if-eqz p2, :cond_1

    .line 1165
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 1166
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1167
    const/4 v2, 0x2

    iput v2, p1, Landroid/os/Message;->what:I

    .line 1168
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 1169
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1170
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1171
    goto :goto_0

    .line 1172
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 1173
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1174
    const/4 p2, 0x3

    iput p2, p1, Landroid/os/Message;->what:I

    .line 1175
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget p2, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 1176
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1182
    goto :goto_1

    .line 1181
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1178
    :catch_0
    move-exception p1

    .line 1179
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!MediaScannerConnection exception: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1181
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1182
    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1185
    nop

    .line 1186
    return-void

    .line 1181
    :goto_2
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1182
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_3
    iget-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p2}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1185
    throw p1
.end method
