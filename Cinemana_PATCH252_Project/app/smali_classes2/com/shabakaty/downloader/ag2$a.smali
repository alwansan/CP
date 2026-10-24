.class public final Lcom/shabakaty/downloader/ag2$a;
.super Ljava/lang/Object;
.source "LazyJavaPackageScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ag2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/hw2;

.field public final b:Lcom/shabakaty/downloader/q62;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/q62;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ag2$a;->a:Lcom/shabakaty/downloader/hw2;

    iput-object p2, p0, Lcom/shabakaty/downloader/ag2$a;->b:Lcom/shabakaty/downloader/q62;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ag2$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/ag2$a;->a:Lcom/shabakaty/downloader/hw2;

    check-cast p1, Lcom/shabakaty/downloader/ag2$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/ag2$a;->a:Lcom/shabakaty/downloader/hw2;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag2$a;->a:Lcom/shabakaty/downloader/hw2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->hashCode()I

    move-result v0

    return v0
.end method
