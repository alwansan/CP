.class public final Lcom/shabakaty/downloader/ps1;
.super Ljava/lang/Object;
.source "Header.kt"


# static fields
.field public static final d:Lcom/shabakaty/downloader/fp;

.field public static final e:Lcom/shabakaty/downloader/fp;

.field public static final f:Lcom/shabakaty/downloader/fp;

.field public static final g:Lcom/shabakaty/downloader/fp;

.field public static final h:Lcom/shabakaty/downloader/fp;

.field public static final i:Lcom/shabakaty/downloader/fp;


# instance fields
.field public final a:I

.field public final b:Lcom/shabakaty/downloader/fp;

.field public final c:Lcom/shabakaty/downloader/fp;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/fp;->v:Lcom/shabakaty/downloader/fp$a;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/ps1;->d:Lcom/shabakaty/downloader/fp;

    const-string v1, ":status"

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/ps1;->e:Lcom/shabakaty/downloader/fp;

    const-string v1, ":method"

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/ps1;->f:Lcom/shabakaty/downloader/fp;

    const-string v1, ":path"

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/ps1;->g:Lcom/shabakaty/downloader/fp;

    const-string v1, ":scheme"

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/ps1;->h:Lcom/shabakaty/downloader/fp;

    const-string v1, ":authority"

    .line 6
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ps1;->i:Lcom/shabakaty/downloader/fp;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fp;Lcom/shabakaty/downloader/fp;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ps1;->b:Lcom/shabakaty/downloader/fp;

    iput-object p2, p0, Lcom/shabakaty/downloader/ps1;->c:Lcom/shabakaty/downloader/fp;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fp;->j()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/shabakaty/downloader/fp;->j()I

    move-result p2

    add-int/2addr p1, p2

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/ps1;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fp;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/fp;->v:Lcom/shabakaty/downloader/fp$a;

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ps1;-><init>(Lcom/shabakaty/downloader/fp;Lcom/shabakaty/downloader/fp;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/fp;->v:Lcom/shabakaty/downloader/fp$a;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object p1

    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/fp$a;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/fp;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ps1;-><init>(Lcom/shabakaty/downloader/fp;Lcom/shabakaty/downloader/fp;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/shabakaty/downloader/ps1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/ps1;

    iget-object v0, p0, Lcom/shabakaty/downloader/ps1;->b:Lcom/shabakaty/downloader/fp;

    iget-object v1, p1, Lcom/shabakaty/downloader/ps1;->b:Lcom/shabakaty/downloader/fp;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/ps1;->c:Lcom/shabakaty/downloader/fp;

    iget-object p1, p1, Lcom/shabakaty/downloader/ps1;->c:Lcom/shabakaty/downloader/fp;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/ps1;->b:Lcom/shabakaty/downloader/fp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fp;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/shabakaty/downloader/ps1;->c:Lcom/shabakaty/downloader/fp;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/shabakaty/downloader/fp;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/ps1;->b:Lcom/shabakaty/downloader/fp;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fp;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/ps1;->c:Lcom/shabakaty/downloader/fp;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fp;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
