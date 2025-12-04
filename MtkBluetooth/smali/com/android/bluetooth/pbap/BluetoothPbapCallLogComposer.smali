.class public Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
.super Ljava/lang/Object;
.source "BluetoothPbapCallLogComposer.java"


# static fields
.field private static final CALLER_NAME_COLUMN_INDEX:I = 0x3

.field private static final CALLER_NUMBERLABEL_COLUMN_INDEX:I = 0x5

.field private static final CALLER_NUMBERTYPE_COLUMN_INDEX:I = 0x4

.field private static final CALL_TYPE_COLUMN_INDEX:I = 0x2

.field private static final DATE_COLUMN_INDEX:I = 0x1

.field private static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field private static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field private static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field private static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final NUMBER_COLUMN_INDEX:I = 0x0

.field private static final NUMBER_PRESENTATION_COLUMN_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String; = "PbapCallLogComposer"

.field private static final VCARD_PROPERTY_CALLTYPE_INCOMING:Ljava/lang/String; = "RECEIVED"

.field private static final VCARD_PROPERTY_CALLTYPE_MISSED:Ljava/lang/String; = "MISSED"

.field private static final VCARD_PROPERTY_CALLTYPE_OUTGOING:Ljava/lang/String; = "DIALED"

.field private static final VCARD_PROPERTY_X_TIMESTAMP:Ljava/lang/String; = "X-IRMC-CALL-DATETIME"

.field private static final sCallLogProjection:[Ljava/lang/String;


# instance fields
.field private final RFC_2455_FORMAT:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private mTerminateIsCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 60
    const-string v0, "number"

    const-string v1, "date"

    const-string v2, "type"

    const-string v3, "name"

    const-string v4, "numbertype"

    const-string v5, "numberlabel"

    const-string v6, "presentation"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->sCallLogProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "No error"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 91
    const-string v0, "yyyyMMdd\'T\'HHmmss"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->RFC_2455_FORMAT:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    return-void
.end method

.method private createOneCallLogEntryInternal(Z)Ljava/lang/String;
    .locals 6

    .line 144
    if-eqz p1, :cond_0

    const/high16 p1, -0x40000000    # -2.0f

    goto :goto_0

    .line 145
    :cond_0
    const p1, -0x3fffffff    # -2.0000002f

    :goto_0
    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    .line 147
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    invoke-direct {v0, p1}, Lcom/android/vcard/VCardBuilder;-><init>(I)V

    .line 148
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_1

    .line 152
    move-object p1, v5

    .line 154
    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 156
    nop

    .line 159
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0092

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 154
    :cond_2
    move-object v5, p1

    .line 161
    :goto_1
    new-array p1, v4, [Ljava/lang/String;

    aput-object v5, p1, v2

    invoke-static {p1}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result p1

    .line 162
    xor-int/2addr p1, v4

    const-string v3, "FN"

    invoke-virtual {v0, v3, v5, p1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 163
    const-string v3, "N"

    invoke-virtual {v0, v3, v5, p1, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 165
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 166
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    :cond_3
    const/16 v4, 0x14

    if-le p1, v4, :cond_4

    .line 173
    const/4 p1, 0x2

    .line 176
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->tryAppendCallHistoryTimeStampField(Lcom/android/vcard/VCardBuilder;)V

    .line 179
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toRfc2455Format(J)Ljava/lang/String;
    .locals 1

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 213
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private tryAppendCallHistoryTimeStampField(Lcom/android/vcard/VCardBuilder;)V
    .locals 5

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 232
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 247
    const-string p1, "PbapCallLogComposer"

    const-string v0, "Call log type not correct."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 243
    :cond_0
    nop

    .line 244
    const-string v0, "MISSED"

    goto :goto_0

    .line 239
    :cond_1
    nop

    .line 240
    const-string v0, "DIALED"

    goto :goto_0

    .line 235
    :cond_2
    nop

    .line 236
    const-string v0, "RECEIVED"

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 253
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 254
    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->toRfc2455Format(J)Ljava/lang/String;

    move-result-object v1

    .line 253
    const-string v2, "X-IRMC-CALL-DATETIME"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 255
    return-void
.end method


# virtual methods
.method public composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 187
    if-eqz p4, :cond_0

    const/high16 p4, -0x40000000    # -2.0f

    goto :goto_0

    .line 188
    :cond_0
    const p4, -0x3fffffff    # -2.0000002f

    :goto_0
    const/high16 v0, 0x2000000

    or-int/2addr p4, v0

    .line 190
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    invoke-direct {v0, p4}, Lcom/android/vcard/VCardBuilder;-><init>(I)V

    .line 191
    nop

    .line 192
    const/4 p4, 0x1

    new-array v1, p4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    goto :goto_1

    .line 192
    :cond_1
    move p4, v2

    .line 195
    :goto_1
    const-string v1, "FN"

    invoke-virtual {v0, v1, p2, p4, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 196
    const-string v1, "N"

    invoke-virtual {v0, v1, p2, p4, v2}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 198
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 203
    :cond_2
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createOneEntry(Z)Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneCallLogEntryInternal(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 137
    return-object p1

    .line 139
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 140
    throw p1

    .line 133
    :cond_1
    :goto_0
    const-string p1, "The vCard composer object is not correctly initialized"

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 134
    const/4 p1, 0x0

    return-object p1
.end method

.method public finalize()V
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 275
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 101
    const-string v0, "There\'s no exportable in the database"

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 102
    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->sCallLogProjection:[Ljava/lang/String;

    .line 108
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 109
    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 111
    if-nez p1, :cond_0

    .line 112
    const-string p1, "Failed to get database information"

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 113
    return v2

    .line 116
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 118
    :cond_2
    :goto_0
    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_1
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 124
    goto :goto_2

    .line 122
    :catchall_0
    move-exception p2

    goto :goto_3

    .line 119
    :catch_0
    move-exception p2

    .line 120
    :try_start_1
    const-string p3, "PbapCallLogComposer"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteException on Cursor#close(): "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 125
    :goto_2
    return v2

    .line 122
    :goto_3
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 124
    throw p2

    .line 104
    :cond_3
    const-string p1, "The Uri vCard composer received is not supported by the composer."

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 105
    return v2
.end method

.method public isAfterLast()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    return v0

    .line 288
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public terminate()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PbapCallLogComposer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 267
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mTerminateIsCalled:Z

    .line 268
    return-void
.end method
