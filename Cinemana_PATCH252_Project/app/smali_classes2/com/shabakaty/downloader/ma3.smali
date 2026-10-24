.class public Lcom/shabakaty/downloader/ma3;
.super Ljava/lang/Object;
.source "ParseSettings.java"


# static fields
.field public static final c:Lcom/shabakaty/downloader/ma3;

.field public static final d:Lcom/shabakaty/downloader/ma3;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ma3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/shabakaty/downloader/ma3;-><init>(ZZ)V

    sput-object v0, Lcom/shabakaty/downloader/ma3;->c:Lcom/shabakaty/downloader/ma3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ma3;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/shabakaty/downloader/ma3;-><init>(ZZ)V

    sput-object v0, Lcom/shabakaty/downloader/ma3;->d:Lcom/shabakaty/downloader/ma3;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ma3;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ma3;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/he;)Lcom/shabakaty/downloader/he;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ma3;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p1, Lcom/shabakaty/downloader/he;->r:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/he;->s:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ma3;->a:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/md0;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
