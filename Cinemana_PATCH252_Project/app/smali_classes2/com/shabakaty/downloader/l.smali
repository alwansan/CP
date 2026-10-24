.class public final Lcom/shabakaty/downloader/l;
.super Ljava/lang/Object;
.source "AbstractBinaryClassAnnotationAndConstantLoader.kt"

# interfaces
.implements Lcom/shabakaty/downloader/he2$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/l$a;,
        Lcom/shabakaty/downloader/l$b;
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/k<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/or2;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/or2;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/k<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/or2;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/HashMap<",
            "Lcom/shabakaty/downloader/or2;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/l;->a:Lcom/shabakaty/downloader/k;

    iput-object p2, p0, Lcom/shabakaty/downloader/l;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/shabakaty/downloader/l;->c:Ljava/util/HashMap;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/hw2;Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/he2$c;
    .locals 1

    const-string p3, "desc"

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object p1

    const-string p3, "name.asString()"

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p3, Lcom/shabakaty/downloader/or2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p3, p1, p2}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/l$b;

    invoke-direct {p1, p0, p3}, Lcom/shabakaty/downloader/l$b;-><init>(Lcom/shabakaty/downloader/l;Lcom/shabakaty/downloader/or2;)V

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/hw2;Ljava/lang/String;)Lcom/shabakaty/downloader/he2$e;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/l$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "name.asString()"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/or2;

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/or2;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/nn0;)V

    .line 3
    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/l$a;-><init>(Lcom/shabakaty/downloader/l;Lcom/shabakaty/downloader/or2;)V

    return-object v0
.end method
