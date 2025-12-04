.class public Lcom/android/bluetooth/pbapclient/CallLogPullRequest;
.super Lcom/android/bluetooth/pbapclient/PullRequest;
.source "CallLogPullRequest.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "PbapCallLogPullRequest"

.field private static final TIMESTAMP_FORMAT:Ljava/lang/String; = "yyyyMMdd\'T\'HHmmss"

.field private static final TIMESTAMP_PROPERTY:Ljava/lang/String; = "X-IRMC-CALL-DATETIME"

.field private static final VDBG:Z = false


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mCallCounter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Landroid/accounts/Account;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PullRequest;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->path:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mCallCounter:Ljava/util/HashMap;

    .line 57
    iput-object p4, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mAccount:Landroid/accounts/Account;

    .line 58
    return-void
.end method

.method private updateTimesContacted()V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mCallCounter:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 145
    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mCallCounter:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string v4, "times_contacted"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 147
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 148
    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v4, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 151
    const-string v3, "contact_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v2, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 160
    :cond_0
    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method


# virtual methods
.method public onPullComplete()V
    .locals 12

    .line 62
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mEntries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "PbapCallLogPullRequest"

    const-string v1, "onPullComplete entries is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 75
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->path:Ljava/lang/String;

    const-string v1, "telecom/ich.vcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 76
    move v0, v2

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->path:Ljava/lang/String;

    const-string v3, "telecom/och.vcf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    move v0, v1

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->path:Ljava/lang/String;

    const-string v3, "telecom/mch.vcf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    const/4 v0, 0x3

    .line 86
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-object v4, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry;

    .line 88
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 90
    const-string v7, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string v7, "subscription_id"

    iget-object v8, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v7

    .line 93
    if-eqz v7, :cond_5

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 94
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    .line 97
    :cond_3
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v7}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 98
    const-string v8, "number"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v8, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mCallCounter:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 100
    iget-object v8, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mCallCounter:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v2

    .line 101
    iget-object v9, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mCallCounter:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    iget-object v8, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mCallCounter:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 95
    :cond_5
    :goto_2
    const-string v7, "number"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_3
    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry;->getUnknownXData()Ljava/util/List;

    move-result-object v5

    .line 107
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 108
    if-eqz v5, :cond_7

    .line 109
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 110
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const-string v10, "X-IRMC-CALL-DATETIME"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v9, :cond_6

    .line 112
    :try_start_1
    const-string v9, "date"

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 118
    goto :goto_5

    .line 113
    :catch_0
    move-exception v8

    .line 114
    :try_start_2
    const-string v8, "PbapCallLogPullRequest"

    const-string v9, "Failed to parse date "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_6
    :goto_5
    goto :goto_4

    .line 122
    :cond_7
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 123
    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 124
    invoke-virtual {v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 125
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 122
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    goto/16 :goto_1

    .line 127
    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "call_log"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 128
    const-string v2, "PbapCallLogPullRequest"

    const-string v3, "Updated call logs."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-ne v0, v1, :cond_9

    .line 131
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->updateTimesContacted()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 136
    :cond_9
    monitor-enter p0

    .line 137
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 138
    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 82
    :cond_a
    :try_start_4
    const-string v0, "PbapCallLogPullRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown path type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 136
    monitor-enter p0

    .line 137
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 138
    monitor-exit p0

    .line 83
    return-void

    .line 138
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 136
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 133
    :catch_1
    move-exception v0

    .line 134
    :try_start_6
    const-string v1, "PbapCallLogPullRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update call log for path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/CallLogPullRequest;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 136
    monitor-enter p0

    .line 137
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 138
    monitor-exit p0

    .line 139
    :goto_6
    nop

    .line 140
    return-void

    .line 138
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 136
    :goto_7
    monitor-enter p0

    .line 137
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 138
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 139
    throw v0

    .line 138
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method
