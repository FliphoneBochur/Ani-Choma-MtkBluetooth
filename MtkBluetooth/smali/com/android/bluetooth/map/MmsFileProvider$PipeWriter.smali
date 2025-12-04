.class public Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;
.super Ljava/lang/Object;
.source "MmsFileProvider.java"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/MmsFileProvider;
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
.field final synthetic this$0:Lcom/android/bluetooth/map/MmsFileProvider;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/MmsFileProvider;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;->this$0:Lcom/android/bluetooth/map/MmsFileProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V
    .locals 2

    .line 110
    const-string p3, "IOException: "

    sget-boolean p4, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    const-string p5, "BluetoothMmsFileProvider"

    if-eqz p4, :cond_0

    .line 111
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writeDataToPipe(): uri="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - getLastPathSegment() = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 111
    invoke-static {p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    nop

    .line 116
    nop

    .line 117
    nop

    .line 120
    const/4 p4, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    iget-object p1, p0, Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;->this$0:Lcom/android/bluetooth/map/MmsFileProvider;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/MmsFileProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object p4

    .line 122
    invoke-virtual {p4, p2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object p1

    .line 123
    new-instance p2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v1, p0, Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;->this$0:Lcom/android/bluetooth/map/MmsFileProvider;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/MmsFileProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object p1

    .line 124
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    if-eqz p4, :cond_1

    .line 138
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 141
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception p1

    .line 143
    invoke-static {p5, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_5

    .line 131
    :catch_1
    move-exception p1

    goto :goto_1

    .line 126
    :catch_2
    move-exception p1

    goto :goto_3

    .line 137
    :catchall_0
    move-exception p1

    move-object v0, p4

    goto :goto_7

    .line 131
    :catch_3
    move-exception p1

    move-object v0, p4

    .line 132
    :goto_1
    :try_start_4
    invoke-static {p5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    if-eqz p4, :cond_2

    .line 138
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 141
    :cond_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 144
    goto :goto_2

    .line 142
    :catch_4
    move-exception p1

    .line 143
    invoke-static {p5, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_5

    .line 126
    :catch_5
    move-exception p1

    move-object v0, p4

    .line 127
    :goto_3
    :try_start_7
    invoke-static {p5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 137
    if-eqz p4, :cond_3

    .line 138
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 141
    :cond_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 144
    goto :goto_4

    .line 142
    :catch_6
    move-exception p1

    .line 143
    invoke-static {p5, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 149
    :goto_5
    goto :goto_6

    .line 147
    :catch_7
    move-exception p1

    .line 148
    invoke-static {p5, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    nop

    .line 151
    :goto_6
    return-void

    .line 137
    :catchall_1
    move-exception p1

    :goto_7
    if-eqz p4, :cond_4

    .line 138
    invoke-virtual {p4}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 141
    :cond_4
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 144
    goto :goto_8

    .line 142
    :catch_8
    move-exception p2

    .line 143
    invoke-static {p5, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_8
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 149
    goto :goto_9

    .line 147
    :catch_9
    move-exception p2

    .line 148
    invoke-static {p5, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :goto_9
    throw p1
.end method

.method public bridge synthetic writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6

    .line 102
    move-object v5, p5

    check-cast v5, Landroid/database/Cursor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/map/MmsFileProvider$PipeWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/database/Cursor;)V

    return-void
.end method
