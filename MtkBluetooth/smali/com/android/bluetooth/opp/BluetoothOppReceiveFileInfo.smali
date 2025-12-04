.class public Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppReceiveFileInfo.java"


# static fields
.field private static final D:Z = true

.field private static final OPP_LENGTH_OF_FILE_NAME:I = 0xf4

.field private static final V:Z

.field private static sDesiredStoragePath:Ljava/lang/String;


# instance fields
.field public mData:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mInsertUri:Landroid/net/Uri;

.field public mLength:J

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->V:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 85
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLandroid/net/Uri;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mData:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 74
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/net/Uri;I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    .line 79
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 80
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mInsertUri:Landroid/net/Uri;

    .line 81
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 82
    return-void
.end method

.method private static choosefilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 191
    nop

    .line 194
    if-eqz p0, :cond_2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 199
    const-string v0, "\\s"

    const-string v2, " "

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 202
    const-string v0, "[:\"<>*?|]"

    const-string v2, "_"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 203
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->V:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "BluetoothOpp"

    const-string v2, "getting filename from hint"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 207
    if-lez v0, :cond_1

    .line 208
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 210
    :cond_1
    goto :goto_0

    .line 213
    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 12

    .line 91
    const-string v0, "UTF-8"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 93
    nop

    .line 94
    nop

    .line 95
    const-string p1, "hint"

    const-string v1, "total_bytes"

    const-string v3, "mimetype"

    filled-new-array {p1, v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 98
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_1

    .line 100
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 103
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :cond_0
    move-object v5, v1

    .line 106
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 107
    move-wide v8, v3

    goto :goto_1

    .line 106
    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 107
    throw p0

    .line 98
    :cond_1
    move-object v5, v1

    move-wide v8, v3

    .line 110
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v3, "mounted"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "BluetoothOpp"

    if-nez p1, :cond_2

    .line 112
    const-string p0, "Receive File aborted - no external storage"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 p1, 0x1ed

    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object p0

    .line 117
    :cond_2
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->choosefilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    const/16 v1, 0x1ec

    if-nez p1, :cond_3

    .line 120
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object p0

    .line 122
    :cond_3
    nop

    .line 123
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 124
    if-gez v4, :cond_5

    .line 125
    if-nez v5, :cond_4

    .line 127
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object p0

    .line 129
    :cond_4
    const-string v4, ""

    goto :goto_2

    .line 132
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v4, v6

    .line 135
    :goto_2
    sget-boolean v6, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->V:Z

    if-eqz v6, :cond_6

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " File Name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/16 v7, 0xf4

    if-le v6, v7, :cond_7

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " File Name Length :"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " File Name Length in Bytes:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 152
    new-array v10, v7, [B

    .line 153
    invoke-static {v6, v2, v10, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v10, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    move-object p1, v2

    goto :goto_3

    .line 155
    :catch_0
    move-exception v0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File name is too long. Name is truncated as: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 165
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->V:Z

    if-eqz p1, :cond_8

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Generated received filename "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_8
    nop

    .line 170
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 171
    const-string v0, "_display_name"

    invoke-virtual {p1, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "mime_type"

    invoke-virtual {p1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v2, "relative_path"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v0, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 178
    if-nez v10, :cond_9

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error when creating file "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    return-object p0

    .line 185
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "file crated, insertUri:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLandroid/net/Uri;I)V

    return-object p0
.end method
