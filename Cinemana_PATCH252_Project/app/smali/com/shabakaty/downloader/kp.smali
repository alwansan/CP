.class public final Lcom/shabakaty/downloader/kp;
.super Ljava/lang/Object;
.source "CCTDestination.java"

# interfaces
.implements Lcom/shabakaty/downloader/g31;


# static fields
.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/o31;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/shabakaty/downloader/kp;

.field public static final f:Lcom/shabakaty/downloader/kp;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "hts/frbslgiggolai.o/0clgbthfra=snpoo"

    const-string v1, "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3"

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/kl3;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kp;->c:Ljava/lang/String;

    const-string v1, "hts/frbslgigp.ogepscmv/ieo/eaybtho"

    const-string v2, "tp:/ieaeogn-agolai.o/1frlglgc/aclg"

    .line 2
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/kl3;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AzSCki82AwsLzKd5O8zo"

    const-string v3, "IayckHiZRO1EFl1aGoK"

    .line 3
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/kl3;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/shabakaty/downloader/o31;

    .line 5
    new-instance v5, Lcom/shabakaty/downloader/o31;

    const-string v6, "proto"

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcom/shabakaty/downloader/o31;

    const-string v6, "json"

    invoke-direct {v5, v6}, Lcom/shabakaty/downloader/o31;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 6
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lcom/shabakaty/downloader/kp;->d:Ljava/util/Set;

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/kp;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/shabakaty/downloader/kp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/shabakaty/downloader/kp;->e:Lcom/shabakaty/downloader/kp;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/kp;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/kp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/kp;->f:Lcom/shabakaty/downloader/kp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/kp;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/kp;->b:Ljava/lang/String;

    return-void
.end method

.method public static a([B)Lcom/shabakaty/downloader/kp;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "1$"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    .line 4
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    if-ne v1, p0, :cond_2

    const/4 p0, 0x0

    .line 6
    aget-object p0, v0, p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 8
    aget-object v0, v0, v1

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/kp;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/kp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing endpoint in CCTDestination extras"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extra is not a valid encoded LegacyFlgDestination"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Version marker missing from extras"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kp;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/kp;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "1$"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 2
    iget-object v3, p0, Lcom/shabakaty/downloader/kp;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\\"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    aput-object v0, v1, v2

    const-string v0, "%s%s%s%s"

    .line 3
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 4
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method
