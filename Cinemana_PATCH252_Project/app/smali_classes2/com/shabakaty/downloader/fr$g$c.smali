.class public final Lcom/shabakaty/downloader/fr$g$c;
.super Lcom/shabakaty/downloader/fr$g;
.source "CallerImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fr$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "method"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "method.genericParameterTypes"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    new-array v0, v3, [Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    array-length v1, v0

    invoke-static {v0, v2, v1}, Lcom/shabakaty/downloader/hd;->K([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/shabakaty/downloader/fr$g;-><init>(Ljava/lang/reflect/Method;Z[Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/nn0;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/fr$g$c;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/er$a;->a(Lcom/shabakaty/downloader/er;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/yo;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/yo;-><init>(I)V

    iget-object v2, p0, Lcom/shabakaty/downloader/fr$g$c;->f:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/yo;->i(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/yo;->j(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/shabakaty/downloader/yo;->u()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/fr$g;->f(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
