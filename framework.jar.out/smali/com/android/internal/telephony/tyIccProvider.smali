.class public Lcom/android/internal/telephony/tyIccProvider;
.super Landroid/content/ContentProvider;
.source "tyIccProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;
    }
.end annotation


# static fields
.field private static final ADDRESS_BOOK_COLUMN_MAXLENGTH:[Ljava/lang/String; = null

.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADDRESS_BOOK_COLUMN_SIMPHASE:[Ljava/lang/String; = null

.field private static final ADDRESS_BOOK_COLUMN_STORAGE:[Ljava/lang/String; = null

.field private static final DBG:Z = false

.field private static final GETERROR:I = 0x7

.field private static final GET_LAST_ERROR:[Ljava/lang/String; = null

.field private static final KT_RIL_REQ_GET_PB_MAXLENGTH:I = 0x17

.field private static final KT_RIL_REQ_GET_PB_STORAGE:I = 0x16

.field private static final KT_RIL_REQ_READ_PHONEBOOK:I = 0x14

.field private static final KT_RIL_REQ_SIM_PHASE:I = 0x18

.field private static final KT_RIL_REQ_WRITE_PHONEBOOK:I = 0x15

.field private static final MAXLENGTH_PHONEBOOKENTRY:I = 0x408

.field private static final ONERECORD:I = 0x6

.field private static final PBMAXLENGTH:I = 0x5

.field private static final PBSTORAGE:I = 0x2

.field private static final PHONEBOOK:I = 0x1

.field private static final READALLPB:I = 0x3

.field private static final SIMPHASE:I = 0x4

.field private static final STR_ADNUMBER:Ljava/lang/String; = "adnumber"

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_INDEX:Ljava/lang/String; = "index"

.field private static final STR_NEW_ADNUMBER:Ljava/lang/String; = "newAdnumber"

.field private static final STR_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field private static final STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field private static final STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "tyIccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher; = null

.field private static final mOemIdentifier:Ljava/lang/String; = "TYKTOUCH"


# instance fields
.field private SIMPhase:Ljava/lang/String;

.field private last_at_cme_error:I

.field private mChnUnicom3G:Z

.field private mSimulator:Z

.field recordsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 204
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "adnumber"

    aput-object v1, v0, v5

    const-string v1, "index"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/tyIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 212
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "used"

    aput-object v1, v0, v2

    const-string/jumbo v1, "total"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/tyIccProvider;->ADDRESS_BOOK_COLUMN_STORAGE:[Ljava/lang/String;

    .line 217
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "phase"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/tyIccProvider;->ADDRESS_BOOK_COLUMN_SIMPHASE:[Ljava/lang/String;

    .line 221
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "adnumber"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/tyIccProvider;->ADDRESS_BOOK_COLUMN_MAXLENGTH:[Ljava/lang/String;

    .line 228
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "lasterror"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/tyIccProvider;->GET_LAST_ERROR:[Ljava/lang/String;

    .line 253
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 257
    sget-object v0, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "tyicc"

    const-string/jumbo v2, "phonebook"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    sget-object v0, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "tyicc"

    const-string/jumbo v2, "phonebook/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    sget-object v0, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "tyicc"

    const-string/jumbo v2, "pbs"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 260
    sget-object v0, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "tyicc"

    const-string/jumbo v2, "pbr"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 261
    sget-object v0, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "tyicc"

    const-string/jumbo v2, "simphase"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    sget-object v0, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "tyicc"

    const-string/jumbo v2, "maxlength"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    sget-object v0, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "tyicc"

    const-string v2, "error"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 264
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/tyIccProvider;->SIMPhase:Ljava/lang/String;

    .line 279
    iput v1, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 280
    iput-boolean v1, p0, Lcom/android/internal/telephony/tyIccProvider;->mChnUnicom3G:Z

    .line 282
    return-void
.end method

.method private RecordToResult(Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;ILjava/util/ArrayList;Z)V
    .locals 4
    .parameter "record"
    .parameter "index"
    .parameter
    .parameter "bIsLoadInvalid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v3, 0x0

    .line 726
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v0, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v1, p1, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v1, p1, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->email:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    :goto_0
    iget-object v1, p1, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->adnumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 734
    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 740
    .end local v0           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-eqz p4, :cond_0

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .restart local v0       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private addRecordToPhonebook(Landroid/content/ContentValues;)I
    .locals 3
    .parameter "initialValues"

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/android/internal/telephony/tyIccProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1203
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;

    invoke-direct {v0}, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;-><init>()V

    .line 1205
    .local v0, record:Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;
    const-string/jumbo v1, "tag"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->name:Ljava/lang/String;

    .line 1206
    const-string/jumbo v1, "number"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->number:Ljava/lang/String;

    .line 1207
    const-string v1, "emails"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->email:Ljava/lang/String;

    .line 1208
    const-string v1, "adnumber"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->adnumber:Ljava/lang/String;

    .line 1210
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/tyIccProvider;->writeRecordInSim(ILcom/android/internal/telephony/tyIccProvider$PhonebookRecord;)I

    move-result v1

    return v1
.end method

.method private deleteRecordFromPhonebook(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v3, -0x1

    .line 1242
    invoke-virtual {p0}, Lcom/android/internal/telephony/tyIccProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1245
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1250
    :cond_0
    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1252
    .local v1, pair:[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 1253
    const-string/jumbo v4, "tyIccProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolve1: bad where: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :goto_0
    return v3

    .line 1257
    :cond_1
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, key:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1260
    .local v2, val:Ljava/lang/String;
    const-string v4, "index"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_3

    .line 1261
    :cond_2
    const-string/jumbo v4, "tyIccProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolve2: bad where: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1265
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/tyIccProvider;->writeRecordInSim(ILcom/android/internal/telephony/tyIccProvider$PhonebookRecord;)I

    move-result v3

    goto :goto_0
.end method

.method private filterNumberString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 549
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 550
    .local v4, slength:I
    new-array v2, v4, [C

    .line 553
    .local v2, orig:[C
    invoke-virtual {p1, v5, v4, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 556
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 557
    aget-char v0, v2, v1

    .line 558
    .local v0, ch:C
    const/16 v5, 0x30

    if-gt v5, v0, :cond_0

    const/16 v5, 0x39

    if-le v0, v5, :cond_1

    :cond_0
    const/16 v5, 0x2b

    if-eq v5, v0, :cond_1

    const/16 v5, 0x2a

    if-eq v5, v0, :cond_1

    const/16 v5, 0x23

    if-eq v5, v0, :cond_1

    const/16 v5, 0x2c

    if-eq v5, v0, :cond_1

    const/16 v5, 0x70

    if-eq v5, v0, :cond_1

    const/16 v5, 0x77

    if-eq v5, v0, :cond_1

    const/16 v5, 0x50

    if-eq v5, v0, :cond_1

    const/16 v5, 0x57

    if-ne v5, v0, :cond_2

    .line 567
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    .end local v0           #ch:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private filterNumberString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "s"
    .parameter "length"

    .prologue
    const/4 v6, 0x0

    .line 574
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 575
    .local v5, slength:I
    new-array v3, v5, [C

    .line 577
    .local v3, orig:[C
    const/4 v1, 0x0

    .line 579
    .local v1, count:I
    invoke-virtual {p1, v6, v5, v3, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 580
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 582
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_3

    if-ge v1, p2, :cond_3

    .line 583
    aget-char v0, v3, v2

    .line 584
    .local v0, ch:C
    const/16 v6, 0x30

    if-gt v6, v0, :cond_0

    const/16 v6, 0x39

    if-le v0, v6, :cond_1

    :cond_0
    const/16 v6, 0x2b

    if-eq v6, v0, :cond_1

    const/16 v6, 0x2a

    if-eq v6, v0, :cond_1

    const/16 v6, 0x23

    if-eq v6, v0, :cond_1

    const/16 v6, 0x2c

    if-eq v6, v0, :cond_1

    const/16 v6, 0x70

    if-eq v6, v0, :cond_1

    const/16 v6, 0x77

    if-eq v6, v0, :cond_1

    const/16 v6, 0x50

    if-eq v6, v0, :cond_1

    const/16 v6, 0x57

    if-ne v6, v0, :cond_2

    .line 593
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    add-int/lit8 v1, v1, 0x1

    .line 582
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    .end local v0           #ch:C
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getMaxlength()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v11, 0x20

    const/4 v1, 0x0

    .line 669
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 670
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 671
    .local v6, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 672
    new-array v7, v11, [B

    .line 675
    .local v7, rawResponse:[B
    const-string v10, "TYKTOUCH"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const-string v11, "TYKTOUCH"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v10, v1, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 676
    const/16 v10, 0x17

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 677
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 679
    :try_start_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 680
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-interface {v0, v10, v7}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v8

    .line 682
    .local v8, retLens:I
    if-gtz v8, :cond_1

    .line 683
    mul-int/lit8 v10, v8, -0x1

    iput v10, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 684
    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v10

    iget v11, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    if-ne v10, v11, :cond_0

    .line 686
    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v7, v10, v11}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 687
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 688
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .end local v8           #retLens:I
    :cond_0
    :goto_0
    return-object v4

    .line 693
    :catch_0
    move-exception v3

    .line 694
    .local v3, ex:Landroid/os/RemoteException;
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 695
    const-string/jumbo v10, "tyIccProvider"

    const-string v11, "getMaxlength() exception"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    .end local v3           #ex:Landroid/os/RemoteException;
    .restart local v8       #retLens:I
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v4, max:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v7, v1, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 703
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 704
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 705
    .local v5, nlength:I
    const/16 v10, 0x28

    if-le v5, v10, :cond_2

    const/16 v5, 0x28

    .line 706
    :cond_2
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 707
    .local v9, tlength:I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 708
    .local v2, elength:I
    if-lez v2, :cond_3

    const/16 v1, 0xf

    .line 710
    .local v1, anlength:I
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getMemoryStorage()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    .line 626
    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 627
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 628
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 629
    new-array v3, v10, [B

    .line 631
    .local v3, rawResponse:[B
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v5, storage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v9, "TYKTOUCH"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "TYKTOUCH"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v9, v11, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 636
    const/16 v9, 0x16

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 637
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 639
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 640
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-interface {v0, v9, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 642
    .local v4, retLens:I
    if-gtz v4, :cond_1

    .line 643
    mul-int/lit8 v9, v4, -0x1

    iput v9, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 644
    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v9

    iget v10, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    if-ne v9, v10, :cond_0

    .line 646
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v3, v9, v10}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 647
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 648
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v5, v8

    .line 665
    .end local v4           #retLens:I
    .end local v5           #storage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-object v5

    .line 653
    .restart local v5       #storage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 654
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 655
    const-string/jumbo v9, "tyIccProvider"

    const-string v10, "getMemoryStorage() exception"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 656
    goto :goto_0

    .line 658
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v4       #retLens:I
    :cond_1
    invoke-static {v3, v11, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 659
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 660
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 661
    .local v7, used:I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 662
    .local v6, total:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 613
    const-string v2, ""

    .line 614
    .local v2, str:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 615
    .local v1, lens:I
    if-lez v1, :cond_0

    .line 616
    new-array v0, v1, [B

    .line 617
    .local v0, data:[B
    invoke-virtual {p1, v0, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 618
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 619
    new-instance v2, Ljava/lang/String;

    .end local v2           #str:Ljava/lang/String;
    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 621
    .end local v0           #data:[B
    .restart local v2       #str:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private loadAllPhonebook(Z)Ljava/util/ArrayList;
    .locals 6
    .parameter "bIsLoadInvalid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    .local v3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v2, 0x0

    .line 1121
    .local v2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/tyIccProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1124
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1128
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1137
    iget-object v5, p0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1139
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/tyIccProvider;->readRecordsFromSim()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1143
    :goto_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1146
    if-eqz v2, :cond_1

    .line 1149
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1151
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1152
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v4, v5, v3, p1}, Lcom/android/internal/telephony/tyIccProvider;->RecordToResult(Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;ILjava/util/ArrayList;Z)V

    .line 1151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1143
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1156
    :cond_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1157
    const-string/jumbo v4, "tyIccProvider"

    const-string v5, "Cannot load phonebook records"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1161
    :cond_2
    return-object v3

    .line 1140
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private loadLastError()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    .local v1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v0, error:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v2, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    return-object v1
.end method

.method private loadOnePhonebook(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    .local v1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v0, 0x0

    .line 1168
    .local v0, record:Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;
    invoke-virtual {p0}, Lcom/android/internal/telephony/tyIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1171
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1175
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1177
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/tyIccProvider;->readRecordFromSim(I)Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1182
    :goto_0
    if-eqz v0, :cond_1

    .line 1183
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/internal/telephony/tyIccProvider;->RecordToResult(Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;ILjava/util/ArrayList;Z)V

    .line 1191
    :goto_1
    return-object v1

    .line 1185
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1187
    const-string/jumbo v2, "tyIccProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "phonebook record"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1178
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadPhonebookMaxlength()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1094
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v0, max:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1099
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/tyIccProvider;->getMaxlength()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1104
    :goto_0
    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    :goto_1
    return-object v1

    .line 1107
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    if-nez v2, :cond_1

    .line 1108
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1110
    :cond_1
    const-string/jumbo v2, "tyIccProvider"

    const-string v3, "Cannot get phonebook max length"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1100
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadPhonebookStorage()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    .local v0, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .line 1073
    .local v1, storage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1075
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/tyIccProvider;->getMemoryStorage()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1080
    :goto_0
    if-eqz v1, :cond_0

    .line 1081
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    :goto_1
    return-object v0

    .line 1083
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    if-nez v2, :cond_1

    .line 1084
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1086
    :cond_1
    const-string/jumbo v2, "tyIccProvider"

    const-string v3, "Cannot get phonebook memory storage"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1076
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadSIMPhase()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 1269
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    .local v5, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    .local v3, phase:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput v9, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1273
    iget-object v7, p0, Lcom/android/internal/telephony/tyIccProvider;->SIMPhase:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1275
    iget-object v7, p0, Lcom/android/internal/telephony/tyIccProvider;->SIMPhase:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    :goto_0
    return-object v5

    .line 1281
    :cond_0
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1282
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1283
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1284
    new-array v4, v8, [B

    .line 1287
    .local v4, rawResponse:[B
    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v9, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1288
    const/16 v7, 0x18

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1289
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1291
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1292
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-interface {v0, v7, v4}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v6

    .line 1294
    .local v6, retLens:I
    if-lez v6, :cond_2

    .line 1295
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v6}, Ljava/lang/String;-><init>([BII)V

    iput-object v7, p0, Lcom/android/internal/telephony/tyIccProvider;->SIMPhase:Ljava/lang/String;

    .line 1297
    iget-object v7, p0, Lcom/android/internal/telephony/tyIccProvider;->SIMPhase:Ljava/lang/String;

    const-string v8, "46001-3G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1299
    new-instance v7, Ljava/lang/String;

    const-string v8, "3G"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/internal/telephony/tyIccProvider;->SIMPhase:Ljava/lang/String;

    .line 1300
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/tyIccProvider;->mChnUnicom3G:Z

    .line 1303
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/tyIccProvider;->SIMPhase:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1317
    .end local v6           #retLens:I
    :catch_0
    move-exception v1

    .line 1318
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1319
    const-string/jumbo v7, "tyIccProvider"

    const-string v8, "loadSIMPhase: exception"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1307
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v6       #retLens:I
    :cond_2
    mul-int/lit8 v7, v6, -0x1

    :try_start_1
    iput v7, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1308
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v7

    iget v8, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    if-ne v7, v8, :cond_3

    .line 1310
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {v4, v7, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1311
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1312
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1315
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1338
    const-string/jumbo v0, "tyIccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[tyIccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inVal"

    .prologue
    const/16 v4, 0x27

    const/4 v3, 0x1

    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 534
    .local v0, len:I
    if-ge v0, v3, :cond_1

    .line 536
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 544
    :cond_0
    :goto_0
    return-object v1

    .line 538
    :cond_1
    move-object v1, p1

    .line 540
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 541
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private parseRecord(Ljava/nio/ByteBuffer;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "p"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;>;"
    const/16 v10, 0x91

    const/4 v9, 0x0

    .line 754
    new-instance v5, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;

    invoke-direct {v5}, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;-><init>()V

    .line 762
    .local v5, record:Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 763
    .local v2, index:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/tyIccProvider;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->number:Ljava/lang/String;

    .line 764
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 765
    .local v6, type:I
    if-ne v10, v6, :cond_0

    .line 767
    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v7, v5, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->number:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 768
    .local v4, number:Ljava/lang/StringBuffer;
    const-string v7, "+"

    invoke-virtual {v4, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->number:Ljava/lang/String;

    .line 770
    .end local v4           #number:Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/tyIccProvider;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v7, v9, v8}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->name:Ljava/lang/String;

    .line 773
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/tyIccProvider;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->adnumber:Ljava/lang/String;

    .line 774
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 775
    if-ne v10, v6, :cond_1

    .line 777
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v7, v5, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->adnumber:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 778
    .local v0, adnumber:Ljava/lang/StringBuffer;
    const-string v7, "+"

    invoke-virtual {v0, v9, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->adnumber:Ljava/lang/String;

    .line 780
    .end local v0           #adnumber:Ljava/lang/StringBuffer;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/tyIccProvider;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, email:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v7, v9, v8}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->email:Ljava/lang/String;

    .line 783
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p2, v7, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 785
    return-void
.end method

.method private putStringToByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 4
    .parameter "b"
    .parameter "str"

    .prologue
    .line 602
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 603
    .local v1, lens:I
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 604
    if-lez v1, :cond_0

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, end:B
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 607
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 609
    .end local v0           #end:B
    :cond_0
    return-void
.end method

.method private readRecordFromSim(I)Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;
    .locals 14
    .parameter "index"

    .prologue
    .line 789
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 790
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const/16 v10, 0x40

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 791
    .local v4, pInputPara:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 792
    const/16 v10, 0x408

    new-array v6, v10, [B

    .line 794
    .local v6, rawResponse:[B
    const/4 v8, 0x0

    .line 795
    .local v8, storage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 798
    .local v9, total:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/tyIccProvider;->getMemoryStorage()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 802
    :goto_0
    if-nez v8, :cond_0

    .line 804
    const/4 v10, 0x0

    .line 855
    :goto_1
    return-object v10

    .line 806
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 807
    if-ltz p1, :cond_1

    if-le p1, v9, :cond_2

    .line 809
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 812
    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    monitor-enter v11

    .line 814
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 815
    iget-object v10, p0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 816
    const/4 v2, 0x1

    .local v2, i:I
    :goto_2
    if-gt v2, v9, :cond_3

    .line 818
    iget-object v10, p0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 823
    .end local v2           #i:I
    :cond_3
    const-string v10, "TYKTOUCH"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v12, 0x0

    const-string v13, "TYKTOUCH"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v10, v12, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 824
    const/16 v10, 0x14

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 825
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 826
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 827
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 829
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 830
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-interface {v0, v10, v6}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v7

    .line 832
    .local v7, retLens:I
    if-gtz v7, :cond_4

    .line 834
    mul-int/lit8 v10, v7, -0x1

    iput v10, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 835
    sget-object v10, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v10

    iget v12, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    if-ne v10, v12, :cond_4

    .line 837
    const/4 v10, 0x0

    const/4 v12, 0x4

    invoke-static {v6, v10, v12}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 838
    .local v3, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 839
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iput v10, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 849
    .end local v3           #p:Ljava/nio/ByteBuffer;
    :cond_4
    if-lez v7, :cond_5

    .line 850
    const/4 v10, 0x0

    :try_start_3
    invoke-static {v6, v10, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 851
    .local v5, pOut:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 852
    iget-object v10, p0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v10}, Lcom/android/internal/telephony/tyIccProvider;->parseRecord(Ljava/nio/ByteBuffer;Ljava/util/ArrayList;)V

    .line 854
    .end local v5           #pOut:Ljava/nio/ByteBuffer;
    :cond_5
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 855
    iget-object v10, p0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    add-int/lit8 v11, p1, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;

    goto/16 :goto_1

    .line 843
    .end local v7           #retLens:I
    :catch_0
    move-exception v1

    .line 844
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v10, -0x1

    :try_start_4
    iput v10, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 845
    const-string/jumbo v10, "tyIccProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readRecordFromSim() index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "exception"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_1

    .line 854
    .end local v1           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 799
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method private readRecordsFromSim()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 862
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    .line 926
    :goto_0
    return-object v13

    .line 865
    :cond_0
    const-string/jumbo v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 866
    .local v1, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const/16 v13, 0x40

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 867
    .local v5, pInputPara:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 868
    const/16 v13, 0x408

    new-array v7, v13, [B

    .line 869
    .local v7, rawResponse:[B
    const/4 v8, 0x0

    .line 872
    .local v8, readed:I
    const/4 v10, 0x0

    .line 873
    .local v10, storage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .line 874
    .local v12, used:I
    const/4 v11, 0x0

    .line 877
    .local v11, total:I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/tyIccProvider;->getMemoryStorage()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 881
    :goto_1
    if-nez v10, :cond_1

    .line 883
    const/4 v13, 0x0

    goto :goto_0

    .line 885
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 886
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 888
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    monitor-enter v14

    .line 890
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 891
    const/4 v4, 0x1

    .local v4, i:I
    :goto_2
    if-gt v4, v11, :cond_2

    .line 893
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 897
    :cond_2
    const-string v13, "TYKTOUCH"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v15, 0x0

    const-string v16, "TYKTOUCH"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v5, v13, v15, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 898
    const/16 v13, 0x14

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 899
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 900
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 901
    .local v2, datapos:I
    const/4 v4, 0x1

    :goto_3
    if-gt v4, v11, :cond_4

    .line 903
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 904
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 905
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 907
    :try_start_2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 908
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-interface {v1, v13, v7}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    .line 915
    .local v9, retLens:I
    if-lez v9, :cond_3

    .line 916
    const/4 v13, 0x0

    :try_start_3
    invoke-static {v7, v13, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 917
    .local v6, pOut:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 918
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/android/internal/telephony/tyIccProvider;->parseRecord(Ljava/nio/ByteBuffer;Ljava/util/ArrayList;)V

    .line 919
    add-int/lit8 v8, v8, 0x1

    .line 921
    .end local v6           #pOut:Ljava/nio/ByteBuffer;
    :cond_3
    if-lt v8, v12, :cond_5

    .line 925
    .end local v9           #retLens:I
    :cond_4
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 910
    :catch_0
    move-exception v3

    .line 911
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v13, "tyIccProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "readRecordsFromSim() index = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 925
    .end local v2           #datapos:I
    .end local v4           #i:I
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v13

    .line 878
    :catch_1
    move-exception v13

    goto/16 :goto_1
.end method

.method private updateRecordToPhonebook(Landroid/content/ContentValues;)I
    .locals 4
    .parameter "values"

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/android/internal/telephony/tyIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1218
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1223
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;

    invoke-direct {v0}, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;-><init>()V

    .line 1225
    .local v0, newRecord:Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;
    const-string v2, "index"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1226
    .local v1, oldRecordID:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1228
    const-string/jumbo v2, "tyIccProvider"

    const-string v3, "No designed index"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const/4 v2, -0x1

    .line 1237
    :goto_0
    return v2

    .line 1232
    :cond_1
    const-string/jumbo v2, "newTag"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->name:Ljava/lang/String;

    .line 1233
    const-string/jumbo v2, "newNumber"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->number:Ljava/lang/String;

    .line 1234
    const-string/jumbo v2, "newEmails"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->email:Ljava/lang/String;

    .line 1235
    const-string/jumbo v2, "newAdnumber"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->adnumber:Ljava/lang/String;

    .line 1237
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/tyIccProvider;->writeRecordInSim(ILcom/android/internal/telephony/tyIccProvider$PhonebookRecord;)I

    move-result v2

    goto :goto_0
.end method

.method private writeRecordInSim(ILcom/android/internal/telephony/tyIccProvider$PhonebookRecord;)I
    .locals 22
    .parameter "index"
    .parameter "newRecord"

    .prologue
    .line 932
    const-string/jumbo v18, "phone"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 933
    .local v5, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const/16 v18, 0x408

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 934
    .local v14, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 935
    const/16 v18, 0x408

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 936
    .local v7, data:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 937
    const/16 v18, 0xa

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 940
    .local v15, rawResponse:[B
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 943
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    if-eqz v18, :cond_0

    .line 946
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/tyIccProvider;->readRecordsFromSim()Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    if-nez v18, :cond_0

    .line 947
    const/16 v18, -0x2

    :try_start_2
    monitor-exit v19

    .line 1066
    :goto_0
    return v18

    .line 948
    :catch_0
    move-exception v18

    .line 953
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 956
    .local v4, N:I
    const/16 v18, -0x1

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    .line 960
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/tyIccProvider;->mChnUnicom3G:Z

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1f4

    move/from16 v0, v18

    if-ne v0, v4, :cond_8

    .line 962
    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v3, v0, [I

    .line 964
    .local v3, FindZone:[I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->email:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->email:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 966
    :cond_1
    const/16 v18, 0x0

    const/16 v20, 0x64

    aput v20, v3, v18

    const/16 v18, 0x1

    const/16 v20, 0xfa

    aput v20, v3, v18

    .line 967
    const/16 v18, 0x2

    const/16 v20, 0x15e

    aput v20, v3, v18

    const/16 v18, 0x3

    const/16 v20, 0x1f4

    aput v20, v3, v18

    .line 968
    const/16 v18, 0x4

    const/16 v20, 0x0

    aput v20, v3, v18

    const/16 v18, 0x5

    const/16 v20, 0x64

    aput v20, v3, v18

    .line 969
    const/16 v18, 0x6

    const/16 v20, 0xfa

    aput v20, v3, v18

    const/16 v18, 0x7

    const/16 v20, 0x15e

    aput v20, v3, v18

    .line 979
    :goto_1
    const/16 v17, 0x0

    .local v17, zone:I
    :goto_2
    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 982
    aget v11, v3, v17

    .local v11, i:I
    :goto_3
    add-int/lit8 v18, v17, 0x1

    aget v18, v3, v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_2

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_6

    .line 985
    add-int/lit8 p1, v11, 0x1

    .line 989
    :cond_2
    if-lez p1, :cond_7

    .line 1005
    .end local v3           #FindZone:[I
    .end local v11           #i:I
    .end local v17           #zone:I
    :cond_3
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    move/from16 v0, p1

    if-le v0, v4, :cond_a

    .line 1006
    :cond_4
    const-string/jumbo v18, "tyIccProvider"

    const-string v20, "Adn record don\'t exist for "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/16 v18, -0x1

    monitor-exit v19

    goto/16 :goto_0

    .line 1065
    .end local v4           #N:I
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 973
    .restart local v3       #FindZone:[I
    .restart local v4       #N:I
    :cond_5
    const/16 v18, 0x0

    const/16 v20, 0x0

    :try_start_3
    aput v20, v3, v18

    const/16 v18, 0x1

    const/16 v20, 0x64

    aput v20, v3, v18

    .line 974
    const/16 v18, 0x2

    const/16 v20, 0xfa

    aput v20, v3, v18

    const/16 v18, 0x3

    const/16 v20, 0x15e

    aput v20, v3, v18

    .line 975
    const/16 v18, 0x4

    const/16 v20, 0x64

    aput v20, v3, v18

    const/16 v18, 0x5

    const/16 v20, 0xfa

    aput v20, v3, v18

    .line 976
    const/16 v18, 0x6

    const/16 v20, 0x15e

    aput v20, v3, v18

    const/16 v18, 0x7

    const/16 v20, 0x1f4

    aput v20, v3, v18

    goto :goto_1

    .line 982
    .restart local v11       #i:I
    .restart local v17       #zone:I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 979
    :cond_7
    add-int/lit8 v17, v17, 0x2

    goto :goto_2

    .line 995
    .end local v3           #FindZone:[I
    .end local v11           #i:I
    .end local v17           #zone:I
    :cond_8
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    if-ge v11, v4, :cond_3

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_9

    .line 998
    add-int/lit8 p1, v11, 0x1

    .line 999
    goto :goto_4

    .line 995
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1010
    .end local v11           #i:I
    :cond_a
    const-string v18, "TYKTOUCH"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v20, 0x0

    const-string v21, "TYKTOUCH"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1011
    const/16 v18, 0x15

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1012
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1013
    if-eqz p2, :cond_f

    .line 1016
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    new-instance v18, Ljava/lang/String;

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->name:Ljava/lang/String;

    .line 1017
    :cond_b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    new-instance v18, Ljava/lang/String;

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->number:Ljava/lang/String;

    .line 1018
    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->adnumber:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    new-instance v18, Ljava/lang/String;

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->adnumber:Ljava/lang/String;

    .line 1019
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->email:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    new-instance v18, Ljava/lang/String;

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->email:Ljava/lang/String;

    .line 1026
    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/IccUtils;->stringToAdnStringField(Ljava/lang/String;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    .line 1027
    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->email:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/IccUtils;->stringToAdnStringField(Ljava/lang/String;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    .line 1028
    .local v9, email:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/tyIccProvider;->filterNumberString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1029
    .local v13, number:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider$PhonebookRecord;->adnumber:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/tyIccProvider;->filterNumberString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1030
    .local v6, adnumber:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/android/internal/telephony/tyIccProvider;->putStringToByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1031
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/android/internal/telephony/tyIccProvider;->putStringToByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1032
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/android/internal/telephony/tyIccProvider;->putStringToByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1033
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lcom/android/internal/telephony/tyIccProvider;->putStringToByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1035
    .end local v6           #adnumber:Ljava/lang/String;
    .end local v9           #email:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #number:Ljava/lang/String;
    :cond_f
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 1036
    .local v8, dataSize:I
    invoke-virtual {v14, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1037
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1038
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1041
    :try_start_4
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1042
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v5, v0, v15}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v16

    .line 1043
    .local v16, retLens:I
    if-gtz v16, :cond_10

    .line 1045
    mul-int/lit8 v18, v16, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1046
    sget-object v18, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 1048
    const/16 v18, 0x0

    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v15, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 1049
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1050
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1060
    :cond_10
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    const/16 v18, 0x0

    :try_start_5
    aget-byte v18, v15, v18

    const/16 v20, 0x4f

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    const/16 v18, 0x1

    aget-byte v18, v15, v18

    const/16 v20, 0x4b

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v20, p1, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1063
    monitor-exit v19

    move/from16 v18, p1

    goto/16 :goto_0

    .line 1054
    .end local v16           #retLens:I
    :catch_1
    move-exception v10

    .line 1055
    .local v10, ex:Landroid/os/RemoteException;
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 1056
    const-string/jumbo v18, "tyIccProvider"

    const-string/jumbo v20, "writeRecordInSim: exception"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/16 v18, -0x2

    monitor-exit v19

    goto/16 :goto_0

    .line 1065
    .end local v10           #ex:Landroid/os/RemoteException;
    .restart local v16       #retLens:I
    :cond_11
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1066
    const/16 v18, -0x2

    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/internal/telephony/tyIccProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 481
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 484
    const/4 v0, 0x0

    .line 502
    :goto_0
    return v0

    .line 487
    :cond_0
    const/4 v0, 0x0

    .line 491
    .local v0, deleteID:I
    sget-object v3, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 492
    .local v1, match:I
    packed-switch v1, :pswitch_data_0

    .line 498
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot insert into URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/tyIccProvider;->deleteRecordFromPhonebook(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 495
    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 423
    sget-object v0, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/internal/telephony/tyIccProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 436
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-nez v5, :cond_0

    .line 439
    const/4 v3, 0x0

    .line 474
    :goto_0
    return-object v3

    .line 443
    :cond_0
    const/4 v1, 0x0

    .line 447
    .local v1, insertID:I
    sget-object v5, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 448
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 454
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot insert into URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 450
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/tyIccProvider;->addRecordToPhonebook(Landroid/content/ContentValues;)I

    move-result v1

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "content://tyicc/"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, buf:Ljava/lang/StringBuilder;
    packed-switch v2, :pswitch_data_1

    .line 466
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 474
    .local v3, resultUri:Landroid/net/Uri;
    goto :goto_0

    .line 461
    .end local v3           #resultUri:Landroid/net/Uri;
    :pswitch_1
    const-string/jumbo v5, "phonebook/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 459
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 317
    const-string/jumbo v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, device:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    iput-boolean v2, p0, Lcom/android/internal/telephony/tyIccProvider;->mSimulator:Z

    .line 324
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/tyIccProvider;->SIMPhase:Ljava/lang/String;

    .line 325
    iput v2, p0, Lcom/android/internal/telephony/tyIccProvider;->last_at_cme_error:I

    .line 326
    iput-boolean v2, p0, Lcom/android/internal/telephony/tyIccProvider;->mChnUnicom3G:Z

    .line 327
    return v3

    .line 322
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/tyIccProvider;->mSimulator:Z

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/tyIccProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 341
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-nez v5, :cond_0

    .line 344
    const/4 v5, 0x0

    .line 418
    :goto_0
    return-object v5

    .line 348
    :cond_0
    const/4 v1, 0x0

    .line 349
    .local v1, columnNames:[Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/internal/telephony/tyIccProvider;->mSimulator:Z

    if-nez v5, :cond_1

    .line 350
    sget-object v5, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 390
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 352
    :pswitch_0
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/tyIccProvider;->loadAllPhonebook(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 353
    .local v3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    sget-object v1, Lcom/android/internal/telephony/tyIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 418
    :goto_1
    new-instance v5, Lcom/android/internal/telephony/ArrayListCursor;

    invoke-direct {v5, v1, v3}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 358
    .end local v3           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    long-to-int v0, v5

    .line 359
    .local v0, IndexInSim:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/tyIccProvider;->loadOnePhonebook(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 361
    .restart local v3       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    sget-object v1, Lcom/android/internal/telephony/tyIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 362
    goto :goto_1

    .line 365
    .end local v0           #IndexInSim:I
    .end local v3           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_2
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/tyIccProvider;->loadAllPhonebook(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 366
    .restart local v3       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    sget-object v1, Lcom/android/internal/telephony/tyIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 367
    goto :goto_1

    .line 370
    .end local v3           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/tyIccProvider;->loadPhonebookStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 371
    .restart local v3       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    sget-object v1, Lcom/android/internal/telephony/tyIccProvider;->ADDRESS_BOOK_COLUMN_STORAGE:[Ljava/lang/String;

    .line 372
    goto :goto_1

    .line 375
    .end local v3           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/tyIccProvider;->loadSIMPhase()Ljava/util/ArrayList;

    move-result-object v3

    .line 376
    .restart local v3       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    sget-object v1, Lcom/android/internal/telephony/tyIccProvider;->ADDRESS_BOOK_COLUMN_SIMPHASE:[Ljava/lang/String;

    .line 377
    goto :goto_1

    .line 380
    .end local v3           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/tyIccProvider;->loadPhonebookMaxlength()Ljava/util/ArrayList;

    move-result-object v3

    .line 381
    .restart local v3       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    sget-object v1, Lcom/android/internal/telephony/tyIccProvider;->ADDRESS_BOOK_COLUMN_MAXLENGTH:[Ljava/lang/String;

    .line 382
    goto :goto_1

    .line 385
    .end local v3           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/tyIccProvider;->loadLastError()Ljava/util/ArrayList;

    move-result-object v3

    .line 386
    .restart local v3       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    sget-object v1, Lcom/android/internal/telephony/tyIccProvider;->GET_LAST_ERROR:[Ljava/lang/String;

    .line 387
    goto :goto_1

    .line 394
    .end local v3           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 397
    .restart local v3       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v2, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "Ron Stevens/H"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    const-string v5, "512-555-5038"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .restart local v2       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "Ron Stevens/M"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    const-string v5, "512-555-8305"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .restart local v2       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "Melissa Owens"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    const-string v5, "512-555-8305"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .restart local v2       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "Directory Assistence"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const-string v5, "411"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/tyIccProvider;->recordsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 333
    monitor-exit v1

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/internal/telephony/tyIccProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 509
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 512
    const/4 v2, 0x0

    .line 529
    :goto_0
    return v2

    .line 515
    :cond_0
    const/4 v2, 0x0

    .line 518
    .local v2, updateID:I
    sget-object v3, Lcom/android/internal/telephony/tyIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 519
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 525
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot insert into URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 521
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/tyIccProvider;->updateRecordToPhonebook(Landroid/content/ContentValues;)I

    move-result v2

    .line 522
    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
