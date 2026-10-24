.class public final Lcom/shabakaty/downloader/dd2$a;
.super Lcom/shabakaty/downloader/af2;
.source "KParameterImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/dd2;-><init>(Lcom/shabakaty/downloader/ac2;ILcom/shabakaty/downloader/cd2$a;Lcom/shabakaty/downloader/rm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/annotation/Annotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/dd2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dd2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/dd2$a;->r:Lcom/shabakaty/downloader/dd2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dd2$a;->r:Lcom/shabakaty/downloader/dd2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/dd2;->d:Lcom/shabakaty/downloader/cq3$a;

    sget-object v1, Lcom/shabakaty/downloader/dd2;->e:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-descriptor>(...)"

    .line 4
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/aa3;

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/ty4;->b(Lcom/shabakaty/downloader/h8;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
