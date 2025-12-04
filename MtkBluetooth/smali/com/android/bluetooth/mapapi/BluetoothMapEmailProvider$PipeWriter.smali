.class public Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;
.super Ljava/lang/Object;
.source "BluetoothMapEmailProvider.java"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PipeWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ContentProvider$PipeDataWriter<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;->this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V
    .locals 9

    .line 186
    const-string p3, "IOException: "

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "writeDataToPipe(): uri="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " - getLastPathSegment() = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 186
    const-string p5, "BluetoothMapEmailProvider"

    invoke-static {p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    nop

    .line 193
    const/4 p4, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    nop

    .line 196
    nop

    .line 197
    :try_start_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 198
    const/4 p4, 0x2

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 199
    invoke-static {p2}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 200
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x4

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-lt p2, p4, :cond_2

    .line 201
    const/4 p2, 0x3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 202
    const-string p2, "NO_ATTACHMENTS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 203
    move v5, v0

    move v6, v5

    goto :goto_0

    .line 204
    :cond_0
    const-string p2, "DOWNLOAD_NO_ATTACHMENTS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 206
    nop

    .line 207
    move v6, v5

    move v5, v0

    goto :goto_0

    .line 208
    :cond_1
    const-string p2, "DOWNLOAD"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 209
    move v6, v5

    goto :goto_0

    .line 213
    :cond_2
    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;->this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->WriteMessageToStream(JJZZLjava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 224
    goto :goto_1

    .line 222
    :catch_0
    move-exception p1

    .line 223
    invoke-static {p5, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    .line 220
    :catchall_0
    move-exception p1

    move-object p4, v8

    goto :goto_6

    .line 214
    :catch_1
    move-exception p1

    move-object p4, v8

    goto :goto_2

    .line 220
    :catchall_1
    move-exception p1

    goto :goto_6

    .line 214
    :catch_2
    move-exception p1

    .line 215
    :goto_2
    :try_start_4
    invoke-static {p5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 221
    :try_start_5
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 224
    goto :goto_3

    .line 222
    :catch_3
    move-exception p1

    .line 223
    invoke-static {p5, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_3
    :try_start_6
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 229
    :goto_4
    goto :goto_5

    .line 227
    :catch_4
    move-exception p1

    .line 228
    invoke-static {p5, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    nop

    .line 231
    :goto_5
    return-void

    .line 221
    :goto_6
    :try_start_7
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 224
    goto :goto_7

    .line 222
    :catch_5
    move-exception p2

    .line 223
    invoke-static {p5, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    :goto_7
    :try_start_8
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 229
    goto :goto_8

    .line 227
    :catch_6
    move-exception p2

    .line 228
    invoke-static {p5, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :goto_8
    throw p1
.end method

.method public bridge synthetic writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6

    .line 177
    move-object v5, p5

    check-cast v5, Landroid/database/Cursor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V

    return-void
.end method
