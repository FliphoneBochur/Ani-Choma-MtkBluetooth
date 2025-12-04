.class public Lcom/android/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;,
        Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field public static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final LOG_TAG:Ljava/lang/String; = "VCardComposer"

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final sContactsProjection:[Ljava/lang/String;

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContentUriForRawContactsEntity:Landroid/net/Uri;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorSuppliedFromOutside:Z

.field private mErrorReason:Ljava/lang/String;

.field private mFirstVCardEmittedInDoCoMoCase:Z

.field private mIdColumn:I

.field private mInitDone:Z

.field private final mIsDoCoMo:Z

.field private mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

.field private mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

.field private mTerminateCalled:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    .line 122
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 164
    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 6

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-string p1, "No error"

    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 155
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 208
    iput p3, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    .line 209
    iput-object p2, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 211
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 213
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p5, "UTF-8"

    if-eqz p2, :cond_0

    move-object p4, p5

    .line 214
    :cond_0
    nop

    .line 215
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 217
    :cond_2
    :goto_0
    iget-boolean p2, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-nez p2, :cond_5

    if-eqz p1, :cond_3

    goto :goto_1

    .line 231
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 232
    iput-object p5, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 234
    :cond_4
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 218
    :cond_5
    :goto_1
    const-string p1, "SHIFT_JIS"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 219
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 224
    :cond_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 225
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 227
    :cond_7
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    .line 238
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Use the charset \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VCardComposer"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method private closeCursorIfAppropriate()V
    .locals 3

    .line 631
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 633
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VCardComposer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 639
    :cond_0
    return-void
.end method

.method private createOneEntryInternal(JLjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 9

    .line 503
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 508
    nop

    .line 510
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 511
    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    if-eqz v3, :cond_0

    .line 512
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    .line 513
    invoke-interface {v2, p1, p2}, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;->getRawContactEntitlesInfo(J)Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;

    move-result-object p1

    .line 514
    iget-object v2, p1, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;->rawContactEntitlesUri:Landroid/net/Uri;

    .line 515
    iget-wide p1, p1, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;->contactId:J

    move-object v3, v2

    goto :goto_0

    .line 511
    :cond_0
    move-object v3, v2

    .line 518
    :goto_0
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    const-string v8, "VCardComposer"

    if-eqz p3, :cond_1

    .line 522
    const/4 v4, 0x5

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    aput-object v7, v4, v5

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "contact_id=?"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    aput-object v6, v4, v2

    const/4 v2, 0x4

    aput-object v1, v4, v2

    invoke-virtual {p3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/EntityIterator;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    move-object v1, p3

    goto :goto_2

    .line 530
    :catch_0
    move-exception p1

    .line 531
    :try_start_2
    const-string p2, "InvocationTargetException has been thrown: "

    invoke-static {v8, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "InvocationTargetException has been thrown"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 527
    :catch_1
    move-exception p3

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {p3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 528
    invoke-static {v8, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 524
    :catch_2
    move-exception p3

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {p3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 525
    invoke-static {v8, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_1
    goto :goto_2

    .line 535
    :cond_1
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "contact_id=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    invoke-static {p3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    :goto_2
    const-string p3, ""

    if-nez v1, :cond_3

    .line 540
    :try_start_3
    const-string p1, "EntityIterator is null"

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 541
    nop

    .line 569
    if-eqz v1, :cond_2

    .line 570
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 541
    :cond_2
    return-object p3

    .line 544
    :cond_3
    :try_start_4
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data does not exist. contactId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 546
    nop

    .line 569
    if-eqz v1, :cond_4

    .line 570
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 546
    :cond_4
    return-object p3

    .line 549
    :cond_5
    :goto_3
    :try_start_5
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 550
    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Entity;

    .line 551
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Entity$NamedContentValues;

    .line 552
    iget-object p3, p3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 553
    const-string v2, "mimetype"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 554
    if-eqz v2, :cond_7

    .line 555
    nop

    .line 556
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 557
    if-nez v3, :cond_6

    .line 558
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 559
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_6
    invoke-direct {p0, p1, p3, v2}, Lcom/android/vcard/VCardComposer;->setPhoneTypeToMobileByAas(Landroid/content/Entity;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 564
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 566
    :cond_7
    goto :goto_4

    .line 567
    :cond_8
    goto :goto_3

    .line 569
    :cond_9
    if-eqz v1, :cond_a

    .line 570
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 574
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 569
    :catchall_0
    move-exception p1

    if-eqz v1, :cond_b

    .line 570
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 572
    :cond_b
    throw p1
.end method

.method private initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    .line 416
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 418
    if-nez p1, :cond_0

    .line 419
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Cursor became null unexpectedly"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VCardComposer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string p1, "Failed to get database information"

    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 421
    return v0

    .line 423
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private initInterFirstPart(Landroid/net/Uri;)Z
    .locals 1

    .line 402
    nop

    .line 403
    if-eqz p1, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 405
    iget-boolean p1, p0, Lcom/android/vcard/VCardComposer;->mInitDone:Z

    if-eqz p1, :cond_1

    .line 406
    const-string p1, "VCardComposer"

    const-string v0, "init() is already called"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 p1, 0x0

    return p1

    .line 409
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private initInterLastPart()Z
    .locals 2

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mInitDone:Z

    .line 444
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 445
    return v0
.end method

.method private initInterMainPart()Z
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v2, "contact_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    .line 436
    if-gez v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    .line 439
    :cond_1
    iget v0, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 432
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    .line 433
    return v1
.end method

.method private isAasEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 704
    const-string v0, "USIM Account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 705
    const/4 p1, 0x1

    return p1

    .line 707
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setPhoneTypeToMobileByAas(Landroid/content/Entity;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .line 691
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object p1

    const-string v0, "account_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 692
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/vcard/VCardComposer;->isAasEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 693
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "data2"

    invoke-virtual {p2, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    const-string p1, "VCardComposer"

    const-string p2, "AAS: set phone type to be Mobile."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_0
    return-void
.end method


# virtual methods
.method public buildVCard(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 600
    if-nez p1, :cond_0

    .line 601
    const-string p1, "VCardComposer"

    const-string v0, "The given map is null. Ignore and return empty String"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string p1, ""

    return-object p1

    .line 604
    :cond_0
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 605
    const-string v1, "vnd.android.cursor.item/name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    .line 606
    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    .line 607
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    invoke-virtual {v1, v2, v3}, Lcom/android/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    .line 609
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    .line 610
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    .line 611
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    .line 612
    const-string v2, "vnd.android.cursor.item/website"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 613
    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 614
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 616
    :cond_1
    const-string v1, "vnd.android.cursor.item/note"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    .line 617
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    .line 618
    const-string v2, "vnd.android.cursor.item/im"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    .line 619
    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    .line 620
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/android/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 621
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createOneEntry()Ljava/lang/String;
    .locals 1

    .line 452
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardComposer;->createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2

    .line 459
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/vcard/VCardComposer;->createOneEntryInternal(JLjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    .line 470
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    const-string v0, "VCardComposer"

    const-string v1, "Cursor#moveToNext() returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    return-object p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 644
    :try_start_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    if-nez v0, :cond_0

    .line 645
    const-string v0, "VCardComposer"

    const-string v1, "finalized() is called before terminate() being called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 649
    nop

    .line 650
    return-void

    .line 648
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 649
    throw v0
.end method

.method public getCount()I
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 659
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v0, 0x0

    return v0

    .line 662
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init()Z
    .locals 1

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/database/Cursor;)Z
    .locals 1

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/vcard/VCardComposer;->initWithCallback(Landroid/database/Cursor;Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;)Z

    move-result p1

    return p1
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 290
    sget-object v2, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 7

    .line 309
    sget-object v2, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 2

    .line 353
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 355
    const-string p1, "The Uri vCard composer received is not supported by the composer."

    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 356
    return v1

    .line 359
    :cond_0
    invoke-direct {p0, p6}, Lcom/android/vcard/VCardComposer;->initInterFirstPart(Landroid/net/Uri;)Z

    move-result p6

    if-nez p6, :cond_1

    .line 360
    return v1

    .line 362
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/android/vcard/VCardComposer;->initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 364
    return v1

    .line 366
    :cond_2
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterMainPart()Z

    move-result p1

    if-nez p1, :cond_3

    .line 367
    return v1

    .line 369
    :cond_3
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterLastPart()Z

    move-result p1

    return p1
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    .line 281
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public initWithCallback(Landroid/database/Cursor;Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;)Z
    .locals 2

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardComposer;->initInterFirstPart(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 390
    return v1

    .line 392
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    .line 393
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 394
    iput-object p2, p0, Lcom/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    .line 395
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterMainPart()Z

    move-result p1

    if-nez p1, :cond_1

    .line 396
    return v1

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterLastPart()Z

    move-result p1

    return p1
.end method

.method public initWithRawContactsEntityUri(Landroid/net/Uri;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public isAfterLast()Z
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 671
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v0, 0x0

    return v0

    .line 674
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    .line 593
    return-void
.end method

.method public terminate()V
    .locals 1

    .line 626
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 628
    return-void
.end method
