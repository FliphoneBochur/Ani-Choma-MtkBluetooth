.class public Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppSendFileInfo.java"


# static fields
.field private static final D:Z = true

.field static final SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field static final SEND_FILE_INFO_NOT_ACCEPTABLE:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private static final TAG:Ljava/lang/String; = "BluetoothOppSendFileInfo"

.field private static final V:Z


# instance fields
.field public final mData:Ljava/lang/String;

.field public final mFileName:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public final mInputStream:Ljava/io/FileInputStream;

.field public final mLength:J

.field public final mMimetype:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 61
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->V:Z

    .line 65
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1ec

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 68
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x196

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_NOT_ACCEPTABLE:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 103
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 105
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 106
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    .line 93
    iput-wide p3, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    .line 94
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    .line 95
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    .line 96
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mData:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 26

    .line 111
    move-object/from16 v7, p1

    move-object/from16 v0, p2

    const-string v8, "_size"

    const-string v9, "r"

    const-string v10, "_display_name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateFileInfo ++ uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "BluetoothOppSendFileInfo"

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 114
    nop

    .line 116
    nop

    .line 120
    const-string v14, "content"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const v6, 0x534e4554

    const/4 v15, -0x1

    .line 122
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 120
    const-wide/16 v17, 0x0

    if-eqz v1, :cond_a

    .line 121
    if-eqz p3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->isForbiddenContent(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "179910660"

    aput-object v1, v0, v4

    aput-object v16, v0, v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 123
    const-string v0, "Content from forbidden URI is not allowed."

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v0

    .line 127
    :cond_0
    invoke-virtual {v12, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "contentType = "

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->V:Z

    if-eqz v2, :cond_1

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    move-object/from16 v16, v0

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->V:Z

    if-eqz v1, :cond_3

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_3
    move-object/from16 v16, v0

    :goto_0
    :try_start_0
    filled-new-array {v10, v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    move-object v1, v0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateFileInfo: Content error, could not access URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_NOT_ACCEPTABLE:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateFileInfo: Permission error, could not access URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 152
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v0

    .line 145
    :catch_2
    move-exception v0

    .line 147
    nop

    .line 148
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 157
    const/4 v1, 0x0

    .line 159
    :goto_1
    if-eqz v1, :cond_8

    .line 161
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 163
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 164
    if-eq v0, v15, :cond_4

    .line 165
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 164
    :cond_4
    const/4 v0, 0x0

    .line 167
    :goto_2
    if-eq v2, v15, :cond_5

    .line 168
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_3

    .line 167
    :cond_5
    move-wide/from16 v2, v17

    .line 170
    :goto_3
    sget-boolean v4, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->V:Z

    if-eqz v4, :cond_7

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 161
    :cond_6
    move-wide/from16 v2, v17

    const/4 v0, 0x0

    .line 175
    :cond_7
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 176
    goto :goto_5

    .line 175
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 176
    throw v0

    .line 159
    :cond_8
    move-wide/from16 v2, v17

    const/4 v0, 0x0

    .line 178
    :goto_5
    if-nez v0, :cond_9

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 181
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->V:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileName from URI :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_9
    move-object/from16 v20, v0

    move-object/from16 v21, v16

    goto :goto_6

    :cond_a
    const-string v1, "file"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid URI path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v0

    .line 200
    :cond_b
    if-eqz p3, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->isInValidStorageDir(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 201
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "35310991"

    aput-object v1, v0, v4

    aput-object v16, v0, v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 202
    const-string v0, "File based URI not in Environment.getExternalStorageDirectory() is not allowed."

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v0

    .line 206
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 207
    nop

    .line 208
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 210
    move-object/from16 v21, v0

    move-object/from16 v20, v1

    .line 214
    :goto_6
    nop

    .line 215
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 221
    :try_start_2
    invoke-virtual {v12, v7, v9}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 223
    cmp-long v0, v2, v4

    if-eqz v0, :cond_d

    cmp-long v0, v4, v17

    if-lez v0, :cond_d

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content provider length is wrong ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), using stat length ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_7

    .line 226
    move-wide v2, v4

    .line 233
    :cond_d
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v15
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7

    .line 237
    cmp-long v0, v2, v17

    if-nez v0, :cond_e

    .line 238
    :try_start_4
    invoke-static {v15}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->getStreamSize(Ljava/io/FileInputStream;)J

    move-result-wide v2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File length not provided. Length from stream = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v12, v7, v9}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v15
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_7

    .line 252
    :catch_3
    move-exception v0

    goto :goto_9

    .line 245
    :catch_4
    move-exception v0

    goto :goto_8

    .line 251
    :cond_e
    :goto_7
    goto :goto_9

    .line 245
    :catch_5
    move-exception v0

    const/4 v15, 0x0

    .line 247
    :goto_8
    :try_start_5
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_7

    .line 250
    goto :goto_9

    .line 248
    :catch_6
    move-exception v0

    goto :goto_9

    .line 254
    :catch_7
    move-exception v0

    .line 255
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v0

    .line 252
    :catch_8
    move-exception v0

    const/4 v15, 0x0

    .line 256
    :goto_9
    goto :goto_a

    .line 215
    :cond_f
    const/4 v15, 0x0

    .line 259
    :goto_a
    if-nez v15, :cond_11

    .line 261
    :try_start_6
    invoke-virtual {v12, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    .line 265
    cmp-long v1, v2, v17

    if-nez v1, :cond_10

    .line 266
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->getStreamSize(Ljava/io/FileInputStream;)J

    move-result-wide v2

    .line 268
    invoke-virtual {v12, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 274
    :cond_10
    move-object/from16 v24, v0

    goto :goto_b

    .line 272
    :catch_9
    move-exception v0

    .line 273
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v0

    .line 270
    :catch_a
    move-exception v0

    .line 271
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v0

    .line 259
    :cond_11
    move-object/from16 v24, v15

    .line 277
    :goto_b
    cmp-long v0, v2, v17

    if-nez v0, :cond_12

    .line 278
    const-string v0, "Could not determine size of file"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v0

    .line 280
    :cond_12
    const-wide v0, 0xffffffffL

    cmp-long v0, v2, v0

    if-gtz v0, :cond_13

    .line 286
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    const/16 v25, 0x0

    move-object/from16 v19, v0

    move-wide/from16 v22, v2

    invoke-direct/range {v19 .. v25}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/io/FileInputStream;I)V

    .line 287
    invoke-static/range {p0 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFilePath:Ljava/lang/String;

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateFileInfo ++ info.mFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-object v0

    .line 281
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File of size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes can\'t be transferred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const v1, 0x7f0e001a

    .line 283
    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_14
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 305
    nop

    .line 306
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 307
    if-eqz p0, :cond_0

    .line 308
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 307
    :cond_0
    const/4 p0, 0x0

    .line 310
    :goto_0
    if-nez p0, :cond_2

    .line 311
    const-string p0, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 312
    goto :goto_1

    .line 315
    :cond_1
    const-string p1, "*/*"

    goto :goto_1

    .line 310
    :cond_2
    move-object p1, p0

    .line 318
    :goto_1
    return-object p1
.end method

.method private static getStreamSize(Ljava/io/FileInputStream;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    nop

    .line 295
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 296
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    const-wide/16 v4, 0x0

    .line 297
    :goto_0
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 298
    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 299
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    goto :goto_0

    .line 301
    :cond_0
    return-wide v4
.end method
