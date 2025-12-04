.class public Lcom/android/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;,
        Lcom/android/vcard/VCardEntry$ToStringIterator;,
        Lcom/android/vcard/VCardEntry$IsIgnorableIterator;,
        Lcom/android/vcard/VCardEntry$EntryElementIterator;,
        Lcom/android/vcard/VCardEntry$AndroidCustomData;,
        Lcom/android/vcard/VCardEntry$SipData;,
        Lcom/android/vcard/VCardEntry$AnniversaryData;,
        Lcom/android/vcard/VCardEntry$BirthdayData;,
        Lcom/android/vcard/VCardEntry$WebsiteData;,
        Lcom/android/vcard/VCardEntry$NoteData;,
        Lcom/android/vcard/VCardEntry$NicknameData;,
        Lcom/android/vcard/VCardEntry$PhotoData;,
        Lcom/android/vcard/VCardEntry$ImData;,
        Lcom/android/vcard/VCardEntry$OrganizationData;,
        Lcom/android/vcard/VCardEntry$PostalData;,
        Lcom/android/vcard/VCardEntry$EmailData;,
        Lcom/android/vcard/VCardEntry$PhoneData;,
        Lcom/android/vcard/VCardEntry$NameData;,
        Lcom/android/vcard/VCardEntry$EntryElement;,
        Lcom/android/vcard/VCardEntry$EntryLabel;
    }
.end annotation


# static fields
.field private static final DEFAULT_ORGANIZATION_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MTK_vCard"

.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mAndroidCustomDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;",
            ">;"
        }
    .end annotation
.end field

.field private mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

.field private mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private final mNameData:Lcom/android/vcard/VCardEntry$NameData;

.field private mNicknameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mSipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$SipData;",
            ">;"
        }
    .end annotation
.end field

.field private mStarred:Z

.field private mUnknownXData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 76
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-AIM"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-MSN"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-YAHOO"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-ICQ"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-JABBER"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-SKYPE-USERNAME"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-GOOGLE-TALK"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 84
    nop

    .line 83
    const-string v3, "X-GOOGLE TALK"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-QQ"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-CUSTOM-IM"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1873
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 1872
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1770
    const/high16 v0, -0x40000000    # -2.0f

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardEntry;-><init>(I)V

    .line 1771
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1774
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 1775
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1

    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardEntry;->mStarred:Z

    .line 1557
    new-instance v0, Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {v0}, Lcom/android/vcard/VCardEntry$NameData;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 1778
    iput p1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 1779
    iput-object p2, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 1780
    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1845
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/android/vcard/VCardEntry$EmailData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1849
    return-void
.end method

.method private addIm(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 8

    .line 1989
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 1992
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v7, Lcom/android/vcard/VCardEntry$ImData;

    move-object v1, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1993
    return-void
.end method

.method private addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9

    .line 1865
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1866
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v8, Lcom/android/vcard/VCardEntry$OrganizationData;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/vcard/VCardEntry$OrganizationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1870
    return-void
.end method

.method private addNickName(Ljava/lang/String;)V
    .locals 2

    .line 1838
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$NicknameData;

    invoke-direct {v1, p1}, Lcom/android/vcard/VCardEntry$NicknameData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1842
    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 2

    .line 1996
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1997
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$NoteData;

    invoke-direct {v1, p1}, Lcom/android/vcard/VCardEntry$NoteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2000
    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1783
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 1786
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1787
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1789
    const/4 v1, 0x6

    if-eq p1, v1, :cond_b

    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v1}, Lcom/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    .line 1796
    :cond_1
    nop

    .line 1797
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1798
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_9

    .line 1799
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1801
    const/16 v6, 0x70

    const/4 v7, 0x1

    if-eq v5, v6, :cond_7

    const/16 v6, 0x50

    if-ne v5, v6, :cond_2

    goto :goto_2

    .line 1805
    :cond_2
    const/16 v6, 0x77

    if-eq v5, v6, :cond_6

    const/16 v6, 0x57

    if-ne v5, v6, :cond_3

    goto :goto_1

    .line 1809
    :cond_3
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v3, :cond_4

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_5

    :cond_4
    const/16 v6, 0x20

    if-eq v5, v6, :cond_5

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_5

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_8

    .line 1814
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1806
    :cond_6
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1808
    move v4, v7

    goto :goto_3

    .line 1803
    :cond_7
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1804
    move v4, v7

    .line 1798
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1817
    :cond_9
    if-nez v4, :cond_a

    .line 1819
    iget p2, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    .line 1820
    nop

    .line 1821
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1820
    invoke-static {p2, v2}, Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1822
    goto :goto_5

    .line 1823
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    .line 1790
    :cond_b
    :goto_4
    nop

    .line 1826
    :goto_5
    new-instance v0, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/android/vcard/VCardEntry$PhoneData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1827
    iget-object p1, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1828
    return-void
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .locals 2

    .line 2003
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2004
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 2006
    :cond_0
    new-instance v0, Lcom/android/vcard/VCardEntry$PhotoData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/vcard/VCardEntry$PhotoData;-><init>(Ljava/lang/String;[BZ)V

    .line 2007
    iget-object p1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2008
    return-void
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1852
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1853
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/vcard/VCardEntry$PostalData;->constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/vcard/VCardEntry$PostalData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1857
    return-void
.end method

.method private addSip(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    .line 1831
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$SipData;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/vcard/VCardEntry$SipData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1835
    return-void
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;)Lcom/android/vcard/VCardEntry;
    .locals 1

    .line 2622
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/vcard/VCardEntry;->buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;

    move-result-object p0

    return-object p0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;
    .locals 0

    .line 2626
    const/4 p0, 0x0

    return-object p0
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1877
    const-string v0, "SORT-AS"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 1878
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1879
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1880
    const-string v1, "MTK_vCard"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_0
    nop

    .line 1885
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 1884
    invoke-static {p1, v0}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1887
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1888
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    goto :goto_0

    .line 1890
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1892
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private constructDisplayName()Ljava/lang/String;
    .locals 7

    .line 2519
    nop

    .line 2521
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1300(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2522
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1300(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2523
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->emptyStructuredName()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2524
    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1200(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2525
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1000(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1100(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$900(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$800(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v6

    .line 2524
    invoke-static/range {v1 .. v6}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2526
    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->emptyPhoneticStructuredName()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2527
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2528
    invoke-static {v1}, Lcom/android/vcard/VCardEntry$NameData;->access$500(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2}, Lcom/android/vcard/VCardEntry$NameData;->access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    .line 2527
    invoke-static {v0, v1, v2, v3}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2529
    :cond_2
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2530
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$EmailData;->access$1500(Lcom/android/vcard/VCardEntry$EmailData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2531
    :cond_3
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2532
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->access$1600(Lcom/android/vcard/VCardEntry$PhoneData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2533
    :cond_4
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2534
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PostalData;

    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2535
    :cond_5
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2536
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2538
    :cond_6
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_7

    .line 2539
    const-string v0, ""

    .line 2541
    :cond_7
    return-object v0
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2508
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    .line 2511
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    .line 2512
    invoke-static {p1}, Lcom/android/vcard/VCardEntry$AndroidCustomData;->constructAndroidCustomData(Ljava/util/List;)Lcom/android/vcard/VCardEntry$AndroidCustomData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2513
    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2056
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 2060
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_1

    .line 2063
    :cond_0
    const/4 v1, 0x5

    if-le p2, v1, :cond_1

    .line 2064
    move p2, v1

    .line 2067
    :cond_1
    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_4

    const/4 v4, 0x4

    if-eq p2, v4, :cond_3

    if-eq p2, v1, :cond_2

    goto :goto_0

    .line 2070
    :cond_2
    iget-object p2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$802(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2072
    :cond_3
    iget-object p2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$902(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2074
    :cond_4
    iget-object p2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$1002(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2076
    :cond_5
    iget-object p2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1102(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2078
    :goto_0
    iget-object p2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/android/vcard/VCardEntry$NameData;->access$1202(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2080
    return-void

    .line 2061
    :cond_6
    :goto_1
    return-void
.end method

.method private handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .line 1905
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardEntry;->buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 1906
    if-nez p2, :cond_0

    .line 1907
    sget-object p2, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 1911
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 1912
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_3

    .line 1924
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1928
    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_2

    .line 1929
    if-le v3, v2, :cond_1

    .line 1930
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1932
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1934
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    move-object v1, v0

    goto :goto_1

    .line 1919
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1920
    nop

    .line 1921
    move-object v1, p2

    move-object v2, v0

    goto :goto_1

    .line 1914
    :cond_4
    nop

    .line 1915
    nop

    .line 1916
    const-string p2, ""

    move-object v1, p2

    move-object v2, v0

    .line 1937
    :goto_1
    iget-object p2, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez p2, :cond_5

    .line 1940
    const/4 v3, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1942
    return-void

    .line 1944
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 1947
    invoke-static {p3}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$100(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1948
    invoke-static {p3}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$200(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1951
    invoke-static {p3, v1}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$102(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1952
    invoke-static {p3, v2}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$202(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1953
    invoke-static {p3, p4}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$302(Lcom/android/vcard/VCardEntry$OrganizationData;Z)Z

    .line 1954
    return-void

    .line 1956
    :cond_6
    goto :goto_2

    .line 1959
    :cond_7
    const/4 v3, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1960
    return-void
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2090
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$500(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2091
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2092
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2099
    :cond_0
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto/16 :goto_4

    .line 2106
    :cond_1
    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 2107
    move v0, v2

    .line 2110
    :cond_2
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lez v4, :cond_7

    .line 2111
    nop

    .line 2112
    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_4

    .line 2113
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 2114
    nop

    .line 2115
    move v4, v3

    goto :goto_1

    .line 2112
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v4, v1

    .line 2118
    :goto_1
    if-eqz v4, :cond_7

    .line 2119
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2120
    array-length v4, v0

    .line 2121
    if-ne v4, v2, :cond_5

    .line 2123
    iget-object p1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v2, v0, v3

    invoke-static {p1, v2}, Lcom/android/vcard/VCardEntry$NameData;->access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2124
    iget-object p1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v1, v0, v1

    invoke-static {p1, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2125
    iget-object p1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v0, v0, v5

    invoke-static {p1, v0}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2126
    :cond_5
    if-ne v4, v5, :cond_6

    .line 2129
    iget-object p1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v2, v0, v3

    invoke-static {p1, v2}, Lcom/android/vcard/VCardEntry$NameData;->access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2130
    iget-object p1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2132
    :cond_6
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2134
    :goto_2
    return-void

    .line 2138
    :cond_7
    if-eq v0, v5, :cond_9

    if-eq v0, v2, :cond_8

    goto :goto_3

    .line 2141
    :cond_8
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2143
    :cond_9
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2145
    :goto_3
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/vcard/VCardEntry$NameData;->access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2147
    return-void

    .line 2100
    :cond_a
    :goto_4
    return-void

    .line 2095
    :cond_b
    :goto_5
    return-void
.end method

.method private handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2463
    return-void

    .line 2465
    :cond_0
    const-string v0, "sip:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2466
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2467
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2468
    return-void

    .line 2472
    :cond_1
    const/4 v0, -0x1

    .line 2473
    const/4 v1, 0x0

    .line 2474
    nop

    .line 2475
    const/4 v2, 0x0

    if-eqz p2, :cond_8

    .line 2476
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2477
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 2478
    const-string v6, "PREF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    .line 2479
    move v3, v8

    goto :goto_2

    .line 2480
    :cond_2
    const-string v6, "HOME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2481
    move v0, v8

    goto :goto_2

    .line 2482
    :cond_3
    const-string v6, "WORK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2483
    move v0, v7

    goto :goto_2

    .line 2484
    :cond_4
    if-gez v0, :cond_6

    .line 2485
    const-string v0, "X-"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2486
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 2488
    :cond_5
    move-object v1, v4

    .line 2490
    :goto_1
    move v0, v2

    .line 2492
    :cond_6
    :goto_2
    goto :goto_0

    .line 2476
    :cond_7
    move v2, v3

    .line 2494
    :cond_8
    if-gez v0, :cond_9

    .line 2495
    const/4 v0, 0x3

    .line 2497
    :cond_9
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/vcard/VCardEntry;->addSip(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2498
    return-void
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .locals 10

    .line 1970
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1973
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1974
    return-void

    .line 1976
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 1977
    invoke-static {v1}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$400(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1978
    invoke-static {v1, p1}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$402(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1979
    return-void

    .line 1981
    :cond_1
    goto :goto_0

    .line 1984
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1985
    return-void
.end method

.method private iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/vcard/VCardEntry$EntryElement;",
            ">;",
            "Lcom/android/vcard/VCardEntry$EntryElementIterator;",
            ")V"
        }
    .end annotation

    .line 1634
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1635
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EntryElement;

    invoke-interface {v0}, Lcom/android/vcard/VCardEntry$EntryElement;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1636
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EntryElement;

    .line 1637
    invoke-interface {p2, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1638
    goto :goto_0

    .line 1639
    :cond_0
    invoke-interface {p2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1641
    :cond_1
    return-void
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2630
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2631
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2633
    nop

    .line 2634
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2635
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2636
    add-int/lit8 v3, v0, -0x1

    if-lez v3, :cond_0

    .line 2637
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    :cond_0
    goto :goto_0

    .line 2640
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2641
    :cond_2
    if-ne v0, v1, :cond_3

    .line 2642
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 2644
    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2020
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2021
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$500(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2022
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2023
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2024
    :cond_0
    return-void

    .line 2027
    :cond_1
    const-string v0, "SORT-AS"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 2028
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 2029
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2030
    const-string v2, "MTK_vCard"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_2
    nop

    .line 2035
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 2034
    invoke-static {p1, v0}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 2036
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2037
    const/4 v2, 0x3

    if-le v0, v2, :cond_3

    .line 2038
    move v0, v2

    .line 2040
    :cond_3
    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_0

    .line 2042
    :cond_4
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2044
    :cond_5
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2046
    :goto_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/vcard/VCardEntry$NameData;->access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2050
    :cond_6
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/vcard/VCardEntry;)V
    .locals 1

    .line 2501
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    .line 2504
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2505
    return-void
.end method

.method public addProperty(Lcom/android/vcard/VCardProperty;)V
    .locals 18

    .line 2150
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2151
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getParameterMap()Ljava/util/Map;

    move-result-object v2

    .line 2152
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v3

    .line 2153
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getByteValue()[B

    move-result-object v4

    .line 2155
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-nez v4, :cond_1

    .line 2157
    return-void

    .line 2159
    :cond_1
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 2160
    invoke-direct {v0, v3}, Lcom/android/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2161
    :cond_2
    move-object v6, v5

    .line 2163
    :goto_0
    const-string v7, "VERSION"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_20

    .line 2165
    :cond_3
    const-string v7, "FN"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2166
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$1302(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 2167
    :cond_4
    const-string v7, "NAME"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2170
    iget-object v1, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v1}, Lcom/android/vcard/VCardEntry$NameData;->access$1300(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2171
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$1302(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 2173
    :cond_5
    const-string v7, "N"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2174
    invoke-direct {v0, v3, v2}, Lcom/android/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto/16 :goto_20

    .line 2175
    :cond_6
    const-string v7, "SORT-STRING"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2176
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$1402(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 2177
    :cond_7
    const-string v7, "NICKNAME"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_51

    .line 2178
    const-string v7, "X-NICKNAME"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_1f

    .line 2180
    :cond_8
    const-string v7, "SOUND"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "TYPE"

    if-eqz v7, :cond_a

    .line 2181
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2182
    if-eqz v1, :cond_9

    .line 2183
    const-string v2, "X-IRMC-N"

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2188
    iget v1, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v6, v1}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 2190
    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    .line 2194
    :cond_9
    goto/16 :goto_20

    :cond_a
    const-string v7, "ADR"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v10, "X-"

    const-string v11, "WORK"

    const-string v12, "HOME"

    const/4 v14, 0x2

    const-string v15, "PREF"

    const/16 v16, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_19

    .line 2195
    nop

    .line 2196
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2197
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2198
    nop

    .line 2199
    move/from16 v1, v16

    goto :goto_2

    .line 2201
    :cond_b
    goto :goto_1

    .line 2196
    :cond_c
    move v1, v9

    .line 2202
    :goto_2
    if-eqz v1, :cond_d

    .line 2203
    return-void

    .line 2206
    :cond_d
    nop

    .line 2207
    nop

    .line 2208
    nop

    .line 2209
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2210
    if-eqz v1, :cond_17

    .line 2211
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v5

    move/from16 v4, v16

    const/4 v13, -0x1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2212
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 2213
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2214
    move v4, v9

    goto :goto_5

    .line 2215
    :cond_e
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2216
    nop

    .line 2217
    move-object v2, v5

    move v13, v9

    goto :goto_5

    .line 2218
    :cond_f
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    .line 2220
    const-string v8, "COMPANY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_4

    .line 2226
    :cond_10
    const-string v8, "PARCEL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 2227
    const-string v8, "DOM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 2228
    const-string v8, "INTL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_5

    .line 2230
    :cond_11
    const-string v8, "OTHER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2232
    nop

    .line 2233
    move-object v2, v5

    const/4 v13, 0x3

    goto :goto_5

    .line 2234
    :cond_12
    if-gez v13, :cond_15

    .line 2235
    nop

    .line 2236
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2237
    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v13, v16

    goto :goto_5

    .line 2239
    :cond_13
    move-object v2, v6

    move/from16 v13, v16

    goto :goto_5

    .line 2224
    :cond_14
    :goto_4
    nop

    .line 2225
    move-object v2, v5

    move v13, v14

    .line 2242
    :cond_15
    :goto_5
    goto :goto_3

    .line 2211
    :cond_16
    move-object v5, v2

    goto :goto_6

    .line 2210
    :cond_17
    move/from16 v4, v16

    const/4 v13, -0x1

    .line 2245
    :goto_6
    if-gez v13, :cond_18

    .line 2246
    goto :goto_7

    .line 2245
    :cond_18
    move v9, v13

    .line 2249
    :goto_7
    invoke-direct {v0, v9, v3, v5, v4}, Lcom/android/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    .line 2250
    goto/16 :goto_20

    :cond_19
    const-string v7, "EMAIL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v13, 0x4

    if-eqz v7, :cond_23

    .line 2251
    nop

    .line 2252
    nop

    .line 2253
    nop

    .line 2254
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2255
    if-eqz v1, :cond_21

    .line 2256
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v2, v16

    const/16 v17, -0x1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2257
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 2258
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2259
    move v2, v9

    goto :goto_a

    .line 2260
    :cond_1a
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 2261
    move/from16 v17, v9

    goto :goto_a

    .line 2262
    :cond_1b
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2263
    move/from16 v17, v14

    goto :goto_a

    .line 2264
    :cond_1c
    const-string v7, "CELL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 2265
    move/from16 v17, v13

    goto :goto_a

    .line 2266
    :cond_1d
    if-gez v17, :cond_1f

    .line 2267
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2268
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_9

    .line 2270
    :cond_1e
    move-object v5, v3

    .line 2272
    :goto_9
    move/from16 v17, v16

    .line 2274
    :cond_1f
    :goto_a
    goto :goto_8

    .line 2256
    :cond_20
    move/from16 v13, v17

    goto :goto_b

    .line 2255
    :cond_21
    move/from16 v2, v16

    const/4 v13, -0x1

    .line 2276
    :goto_b
    if-gez v13, :cond_22

    .line 2277
    const/4 v9, 0x3

    goto :goto_c

    .line 2276
    :cond_22
    move v9, v13

    .line 2279
    :goto_c
    invoke-direct {v0, v9, v6, v5, v2}, Lcom/android/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 2280
    goto/16 :goto_20

    :cond_23
    const-string v7, "ORG"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 2283
    nop

    .line 2284
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2285
    if-eqz v1, :cond_26

    .line 2286
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2287
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2288
    move/from16 v16, v9

    .line 2290
    :cond_24
    goto :goto_d

    .line 2286
    :cond_25
    move/from16 v1, v16

    goto :goto_e

    .line 2285
    :cond_26
    move/from16 v1, v16

    .line 2292
    :goto_e
    invoke-direct {v0, v9, v3, v2, v1}, Lcom/android/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    .line 2293
    goto/16 :goto_20

    :cond_27
    const-string v3, "TITLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2294
    invoke-direct {v0, v6}, Lcom/android/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 2295
    :cond_28
    const-string v3, "ROLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto/16 :goto_20

    .line 2298
    :cond_29
    const-string v3, "PHOTO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "URL"

    if-nez v3, :cond_4b

    .line 2299
    const-string v3, "LOGO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto/16 :goto_1a

    .line 2318
    :cond_2a
    const-string v3, "TEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "sip:"

    if-eqz v3, :cond_32

    .line 2319
    nop

    .line 2320
    nop

    .line 2321
    iget v1, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2324
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2325
    move-object v1, v5

    move v3, v9

    goto :goto_10

    .line 2326
    :cond_2b
    const-string v1, "tel:"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2327
    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v3, v16

    goto :goto_10

    .line 2332
    :cond_2c
    goto :goto_f

    .line 2335
    :cond_2d
    nop

    .line 2338
    :goto_f
    move-object v1, v6

    move/from16 v3, v16

    :goto_10
    if-eqz v3, :cond_2e

    .line 2339
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2340
    invoke-direct {v0, v6, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2341
    goto :goto_13

    .line 2342
    :cond_2e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2f

    .line 2343
    return-void

    .line 2346
    :cond_2f
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 2347
    invoke-static {v2, v1}, Lcom/android/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2351
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_30

    .line 2352
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2353
    goto :goto_11

    .line 2355
    :cond_30
    nop

    .line 2356
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v3, v16

    .line 2360
    :goto_11
    if-eqz v2, :cond_31

    .line 2361
    invoke-interface {v2, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2362
    goto :goto_12

    .line 2364
    :cond_31
    move/from16 v9, v16

    .line 2367
    :goto_12
    invoke-direct {v0, v3, v1, v5, v9}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 2369
    :goto_13
    goto/16 :goto_20

    :cond_32
    const-string v3, "X-SKYPE-PSTNNUMBER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2371
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2374
    if-eqz v1, :cond_33

    .line 2375
    invoke-interface {v1, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2376
    goto :goto_14

    .line 2378
    :cond_33
    move/from16 v9, v16

    .line 2380
    :goto_14
    const/4 v1, 0x7

    invoke-direct {v0, v1, v6, v5, v9}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 2381
    goto/16 :goto_20

    :cond_34
    sget-object v3, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2382
    sget-object v3, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2383
    nop

    .line 2384
    nop

    .line 2385
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 2386
    if-eqz v2, :cond_38

    .line 2387
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, -0x1

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2388
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 2389
    move/from16 v16, v9

    goto :goto_16

    .line 2390
    :cond_35
    if-gez v4, :cond_37

    .line 2391
    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 2392
    move v4, v9

    goto :goto_16

    .line 2393
    :cond_36
    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 2394
    move v4, v14

    .line 2397
    :cond_37
    :goto_16
    goto :goto_15

    .line 2386
    :cond_38
    const/4 v4, -0x1

    .line 2399
    :cond_39
    if-gez v4, :cond_3a

    .line 2400
    move v4, v9

    .line 2402
    :cond_3a
    nop

    .line 2403
    if-eqz v2, :cond_3c

    .line 2404
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_3c

    .line 2405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2406
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2407
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2408
    goto :goto_17

    .line 2409
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    .line 2413
    :cond_3c
    move-object v2, v5

    :goto_18
    move-object/from16 v0, p0

    move-object v3, v6

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardEntry;->addIm(ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 2414
    goto/16 :goto_20

    :cond_3d
    const-string v3, "NOTE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2415
    invoke-direct {v0, v6}, Lcom/android/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 2416
    :cond_3e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2417
    iget-object v1, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    if-nez v1, :cond_3f

    .line 2418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 2420
    :cond_3f
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$WebsiteData;

    invoke-direct {v1, v6}, Lcom/android/vcard/VCardEntry$WebsiteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 2421
    :cond_40
    const-string v3, "BDAY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2422
    new-instance v1, Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-direct {v1, v6}, Lcom/android/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    goto/16 :goto_20

    .line 2423
    :cond_41
    const-string v3, "ANNIVERSARY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2424
    new-instance v1, Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-direct {v1, v6}, Lcom/android/vcard/VCardEntry$AnniversaryData;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    goto/16 :goto_20

    .line 2425
    :cond_42
    const-string v3, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 2426
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 2427
    :cond_43
    const-string v3, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2428
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 2429
    :cond_44
    const-string v3, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2430
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 2431
    :cond_45
    const-string v3, "IMPP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 2433
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2434
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2435
    invoke-direct {v0, v6, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2436
    goto/16 :goto_20

    .line 2437
    :cond_46
    const-string v3, "X-SIP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 2438
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 2439
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2440
    invoke-direct {v0, v6, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2441
    goto/16 :goto_20

    .line 2442
    :cond_47
    const-string v2, "X-ANDROID-CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2443
    iget v1, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v6, v1}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 2445
    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto :goto_19

    .line 2446
    :cond_48
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2448
    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    if-nez v2, :cond_49

    .line 2449
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    .line 2451
    :cond_49
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 2446
    :cond_4a
    :goto_19
    goto :goto_20

    .line 2300
    :cond_4b
    :goto_1a
    const-string v1, "VALUE"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2301
    if-eqz v1, :cond_4c

    invoke-interface {v1, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    goto :goto_1e

    .line 2304
    :cond_4c
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2305
    nop

    .line 2306
    nop

    .line 2307
    if-eqz v1, :cond_50

    .line 2308
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2309
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2310
    move/from16 v16, v9

    goto :goto_1c

    .line 2311
    :cond_4d
    if-nez v5, :cond_4e

    .line 2312
    move-object v5, v2

    .line 2314
    :cond_4e
    :goto_1c
    goto :goto_1b

    .line 2308
    :cond_4f
    move/from16 v1, v16

    goto :goto_1d

    .line 2307
    :cond_50
    move/from16 v1, v16

    .line 2316
    :goto_1d
    invoke-direct {v0, v5, v4, v1}, Lcom/android/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    .line 2318
    :goto_1e
    goto :goto_20

    .line 2179
    :cond_51
    :goto_1f
    invoke-direct {v0, v6}, Lcom/android/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    .line 2455
    :cond_52
    :goto_20
    return-void
.end method

.method public consolidateFields()V
    .locals 2

    .line 2548
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 2549
    return-void
.end method

.method public constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .line 2582
    if-nez p2, :cond_0

    .line 2583
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2586
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2587
    return-object p2

    .line 2590
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 2594
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2595
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2596
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    const-string v2, "account_type"

    const-string v3, "account_name"

    if-eqz v1, :cond_2

    .line 2597
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2598
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 2600
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2601
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2604
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getStarred()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2605
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "starred"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2610
    :cond_3
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "aggregation_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2612
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2614
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2615
    new-instance v0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;-><init>(Lcom/android/vcard/VCardEntry;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2616
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2618
    return-object p2
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1

    .line 2657
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$BirthdayData;->access$1800(Lcom/android/vcard/VCardEntry$BirthdayData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getChildlen()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .line 2696
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 2700
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 2703
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .line 2669
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    return-object v0
.end method

.method public final getImList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .line 2681
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    return-object v0
.end method

.method public final getNameData()Lcom/android/vcard/VCardEntry$NameData;
    .locals 1

    .line 2649
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    return-object v0
.end method

.method public final getNickNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation

    .line 2653
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    return-object v0
.end method

.method public final getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation

    .line 2661
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    return-object v0
.end method

.method public final getOrganizationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .line 2677
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .line 2665
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .line 2685
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public final getPostalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .line 2673
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry;->mStarred:Z

    return v0
.end method

.method public getUnknownXData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2707
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    return-object v0
.end method

.method public final getWebsiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation

    .line 2689
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    return-object v0
.end method

.method public isIgnorable()Z
    .locals 2

    .line 2560
    new-instance v0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$1;)V

    .line 2561
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2562
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->getResult()Z

    move-result v0

    return v0
.end method

.method public final iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 1

    .line 1602
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationStarted()V

    .line 1603
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1604
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1605
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1607
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1608
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1609
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1610
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1611
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1612
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1613
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1614
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1615
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1616
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1617
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1619
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz v0, :cond_0

    .line 1620
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$BirthdayData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1621
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1622
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    if-eqz v0, :cond_1

    .line 1625
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$AnniversaryData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1626
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1627
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1629
    :cond_1
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationEnded()V

    .line 1630
    return-void
.end method

.method public setStarred(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/android/vcard/VCardEntry;->mStarred:Z

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1764
    new-instance v0, Lcom/android/vcard/VCardEntry$ToStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$1;)V

    .line 1765
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1766
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$ToStringIterator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
