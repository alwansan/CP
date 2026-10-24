.class public Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;
.super Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.source "ExtractFromZipSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/ExtractFromZipSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZipUnpacker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;
    }
.end annotation


# instance fields
.field public r:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

.field public final s:Ljava/util/zip/ZipFile;

.field public final t:Lcom/facebook/soloader/UnpackingSoSource;

.field public final synthetic u:Lcom/facebook/soloader/ExtractFromZipSoSource;


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/ExtractFromZipSoSource;Lcom/facebook/soloader/UnpackingSoSource;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->u:Lcom/facebook/soloader/ExtractFromZipSoSource;

    invoke-direct {p0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;-><init>()V

    .line 2
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object p1, p1, Lcom/facebook/soloader/ExtractFromZipSoSource;->f:Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->s:Ljava/util/zip/ZipFile;

    .line 3
    iput-object p2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->t:Lcom/facebook/soloader/UnpackingSoSource;

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    invoke-virtual {p0}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->c()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;-><init>([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    return-object v0
.end method

.method public final b()Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker$ZipBackedInputDsoIterator;-><init>(Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;Lcom/facebook/soloader/ExtractFromZipSoSource$1;)V

    return-object v0
.end method

.method public final c()[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->r:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    if-nez v0, :cond_d

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->u:Lcom/facebook/soloader/ExtractFromZipSoSource;

    iget-object v2, v2, Lcom/facebook/soloader/ExtractFromZipSoSource;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/facebook/soloader/SysUtil;->c()[Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->s:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    .line 8
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 9
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 10
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 11
    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v9, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 13
    :goto_1
    array-length v9, v3

    if-ge v7, v9, :cond_2

    .line 14
    aget-object v9, v3, v7

    if-eqz v9, :cond_1

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    :goto_2
    if-ltz v7, :cond_0

    .line 15
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    if-eqz v8, :cond_3

    .line 17
    iget v8, v8, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->u:I

    if-ge v7, v8, :cond_0

    .line 18
    :cond_3
    new-instance v8, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    invoke-direct {v8, v6, v5, v7}, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;-><init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;I)V

    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_4
    iget-object v2, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->t:Lcom/facebook/soloader/UnpackingSoSource;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 22
    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_a

    .line 23
    aget-object v3, v0, v1

    .line 24
    iget-object v4, v3, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;->t:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Lcom/facebook/soloader/UnpackingSoSource$Dso;->r:Ljava/lang/String;

    move-object v5, p0

    check-cast v5, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;

    .line 25
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 26
    iget-object v10, v5, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->x:Lcom/facebook/soloader/ApkSoSource;

    iget-object v10, v10, Lcom/facebook/soloader/UnpackingSoSource;->d:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    .line 27
    iget-object v4, v5, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->x:Lcom/facebook/soloader/ApkSoSource;

    iput-object v11, v4, Lcom/facebook/soloader/UnpackingSoSource;->d:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v7

    const-string v3, "allowing consideration of corrupted lib %s"

    .line 28
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 29
    :cond_5
    iget v10, v5, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->w:I

    and-int/2addr v10, v8

    if-nez v10, :cond_6

    const-string v3, "allowing consideration of "

    const-string v4, ": self-extraction preferred"

    .line 30
    invoke-static {v3, v9, v4}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 31
    :cond_6
    new-instance v10, Ljava/io/File;

    iget-object v5, v5, Lcom/facebook/soloader/ApkSoSource$ApkUnpacker;->v:Ljava/io/File;

    invoke-direct {v10, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_7

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v9, v4, v7

    aput-object v3, v4, v8

    const-string v3, "allowing considering of %s: %s not in system lib dir"

    .line 33
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 34
    :cond_7
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 35
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    cmp-long v5, v12, v3

    if-eqz v5, :cond_8

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v10, v5, v7

    .line 36
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "allowing consideration of %s: sysdir file length is %s, but the file is %s bytes long in the APK"

    .line 37
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const-string v3, "not allowing consideration of "

    const-string v4, ": deferring to libdir"

    .line 38
    invoke-static {v3, v9, v4}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_5
    const-string v5, "ApkSoSource"

    .line 39
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 40
    :cond_9
    aput-object v11, v0, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 41
    :cond_a
    new-array v1, v2, [Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    const/4 v2, 0x0

    .line 42
    :goto_7
    array-length v3, v0

    if-ge v7, v3, :cond_c

    .line 43
    aget-object v3, v0, v7

    if-eqz v3, :cond_b

    add-int/lit8 v4, v2, 0x1

    .line 44
    aput-object v3, v1, v2

    move v2, v4

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 45
    :cond_c
    iput-object v1, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->r:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    .line 46
    :cond_d
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->r:[Lcom/facebook/soloader/ExtractFromZipSoSource$ZipDso;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/ExtractFromZipSoSource$ZipUnpacker;->s:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method
