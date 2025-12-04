.class public Lcom/android/bluetooth/map/SmsMmsContacts;
.super Ljava/lang/Object;
.source "SmsMmsContacts.java"


# static fields
.field private static final ADDRESS_PROJECTION:[Ljava/lang/String;

.field private static final ADDRESS_URI:Landroid/net/Uri;

.field private static final COL_ADDR_ADDR:I

.field private static final COL_ADDR_ID:I

.field private static final COL_CONTACT_ID:I

.field private static final COL_CONTACT_NAME:I

.field private static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_SEL_VISIBLE:Ljava/lang/String; = "in_visible_group=1"

.field private static final TAG:Ljava/lang/String; = "SmsMmsContacts"


# instance fields
.field private final mNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/MapContact;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNumbers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "canonical-addresses"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_URI:Landroid/net/Uri;

    .line 48
    const-string v0, "_id"

    const-string v1, "address"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_PROJECTION:[Ljava/lang/String;

    .line 51
    nop

    .line 52
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_ADDR_ID:I

    .line 53
    sget-object v2, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_PROJECTION:[Ljava/lang/String;

    .line 54
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_ADDR_ADDR:I

    .line 56
    const-string v1, "display_name"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/bluetooth/map/SmsMmsContacts;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 58
    nop

    .line 59
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_CONTACT_ID:I

    .line 60
    sget-object v0, Lcom/android/bluetooth/map/SmsMmsContacts;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 61
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_CONTACT_NAME:I

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mNames:Ljava/util/HashMap;

    return-void
.end method

.method private fillPhoneCache(Landroid/content/ContentResolver;)V
    .locals 6

    .line 115
    sget-object v1, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 121
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 126
    :goto_0
    if-eqz p1, :cond_3

    .line 129
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 130
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    sget v0, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_ADDR_ID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 132
    sget v2, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_ADDR_ADDR:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    iget-object v3, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :cond_2
    goto :goto_2

    .line 136
    :cond_3
    const-string v0, "SmsMmsContacts"

    const-string v1, "query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_2
    if-eqz p1, :cond_4

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_4
    return-void

    .line 139
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_5

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_5
    throw v0
.end method

.method public static getPhoneNumberUncached(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 8

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    sget-object v3, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/SmsMmsContacts;->ADDRESS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 83
    if-eqz p0, :cond_1

    .line 84
    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    sget p1, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_ADDR_ADDR:I

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz p0, :cond_0

    .line 91
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_0
    return-object p1

    .line 88
    :cond_1
    :try_start_1
    const-string p1, "SmsMmsContacts"

    const-string p2, "query failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    if-eqz p0, :cond_2

    .line 91
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_2
    const/4 p0, 0x0

    return-object p0

    .line 90
    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 91
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_3
    throw p1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mNames:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 107
    :cond_1
    return-void
.end method

.method public getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/android/bluetooth/map/MapContact;
    .locals 1

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/bluetooth/map/SmsMmsContacts;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/bluetooth/map/MapContact;

    move-result-object p1

    return-object p1
.end method

.method public getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/bluetooth/map/MapContact;
    .locals 10

    .line 157
    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/MapContact;

    .line 159
    const-string v1, "*"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {v0}, Lcom/android/bluetooth/map/MapContact;->getId()J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-gez p1, :cond_0

    .line 161
    return-object v2

    .line 163
    :cond_0
    if-nez p3, :cond_1

    .line 164
    return-object v0

    .line 167
    :cond_1
    const-string p1, ".*"

    invoke-virtual {p3, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 170
    invoke-virtual {v0}, Lcom/android/bluetooth/map/MapContact;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    return-object v0

    .line 173
    :cond_2
    return-object v2

    .line 178
    :cond_3
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 179
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 180
    const-string v0, "in_visible_group=1"

    .line 181
    nop

    .line 182
    const/4 v3, 0x1

    if-eqz p3, :cond_4

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AND display_name like ?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-array v4, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v6

    move-object v7, v0

    move-object v8, v4

    goto :goto_0

    .line 182
    :cond_4
    move-object v7, v0

    move-object v8, v2

    .line 187
    :goto_0
    sget-object v6, Lcom/android/bluetooth/map/SmsMmsContacts;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 189
    if-eqz p2, :cond_5

    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lt p3, v3, :cond_5

    .line 190
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    sget p3, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_CONTACT_ID:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 192
    sget p3, Lcom/android/bluetooth/map/SmsMmsContacts;->COL_CONTACT_NAME:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 193
    invoke-static {v0, v1, p3}, Lcom/android/bluetooth/map/MapContact;->create(JLjava/lang/String;)Lcom/android/bluetooth/map/MapContact;

    move-result-object v2

    .line 194
    iget-object p3, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mNames:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    goto :goto_1

    .line 196
    :cond_5
    const-wide/16 v0, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/map/MapContact;->create(JLjava/lang/String;)Lcom/android/bluetooth/map/MapContact;

    move-result-object p3

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    nop

    .line 201
    :goto_1
    if-eqz p2, :cond_6

    .line 202
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_6
    return-object v2

    .line 201
    :catchall_0
    move-exception p1

    if-eqz p2, :cond_7

    .line 202
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_7
    throw p1
.end method

.method public getPhoneNumber(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    return-object v0

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/SmsMmsContacts;->fillPhoneCache(Landroid/content/ContentResolver;)V

    .line 76
    iget-object p1, p0, Lcom/android/bluetooth/map/SmsMmsContacts;->mPhoneNumbers:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
