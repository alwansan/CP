.class public final Lcom/shabakaty/downloader/f05$a;
.super Ljava/lang/Object;
.source "VersionRequirement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/f05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ej3;)Lcom/shabakaty/downloader/f05;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/ej3;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/f05;->b:Lcom/shabakaty/downloader/f05$a;

    sget-object p1, Lcom/shabakaty/downloader/f05;->c:Lcom/shabakaty/downloader/f05;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/f05;

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/ej3;->s:Ljava/util/List;

    const-string v1, "table.requirementList"

    .line 5
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/f05;-><init>(Ljava/util/List;Lcom/shabakaty/downloader/nn0;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
