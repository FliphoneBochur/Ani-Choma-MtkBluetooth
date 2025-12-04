.class public Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;
.super Ljava/lang/Object;
.source "BluetoothMapEmailProvider.java"

# interfaces
.implements Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PipeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeDataReader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;->this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readDataFromPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V
    .locals 6

    .line 139
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "readDataFromPipe(): uri="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BluetoothMapEmailProvider"

    invoke-static {p4, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    nop

    .line 142
    const/4 p3, 0x0

    :try_start_0
    new-instance p5, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    :try_start_1
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 144
    invoke-static {p2}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->getAccountId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 145
    iget-object v0, p0, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;->this$0:Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;

    move-object v1, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider;->UpdateMimeMessageFromStream(Ljava/io/FileInputStream;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    nop

    .line 155
    :try_start_2
    invoke-virtual {p5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 153
    :catchall_0
    move-exception p1

    move-object p3, p5

    goto :goto_3

    .line 146
    :catch_0
    move-exception p1

    move-object p3, p5

    goto :goto_0

    .line 153
    :catchall_1
    move-exception p1

    goto :goto_3

    .line 146
    :catch_1
    move-exception p1

    .line 147
    :goto_0
    :try_start_3
    const-string p2, "IOException: "

    invoke-static {p4, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    if-eqz p3, :cond_0

    .line 155
    :try_start_4
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 157
    :catch_2
    move-exception p1

    .line 158
    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    goto :goto_2

    .line 159
    :cond_0
    :goto_1
    nop

    .line 161
    :goto_2
    return-void

    .line 154
    :goto_3
    if-eqz p3, :cond_1

    .line 155
    :try_start_5
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 157
    :catch_3
    move-exception p2

    .line 158
    invoke-static {p4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 159
    :cond_1
    :goto_4
    nop

    .line 160
    :goto_5
    throw p1
.end method

.method public bridge synthetic readDataFromPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6

    .line 131
    move-object v5, p5

    check-cast v5, Landroid/database/Cursor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/mapapi/BluetoothMapEmailProvider$PipeReader;->readDataFromPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V

    return-void
.end method
