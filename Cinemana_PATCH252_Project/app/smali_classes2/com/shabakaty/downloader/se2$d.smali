.class public final Lcom/shabakaty/downloader/se2$d;
.super Lcom/shabakaty/downloader/af2;
.source "KotlinTypeFactory.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/se2;->h(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;)Lcom/shabakaty/downloader/b74;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/ve2;",
        "Lcom/shabakaty/downloader/b74;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ts4;

.field public final synthetic s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/qt4;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic t:Lcom/shabakaty/downloader/d9;

.field public final synthetic u:Z

.field public final synthetic v:Lcom/shabakaty/downloader/mr2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ts4;Ljava/util/List;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/mr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ts4;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/qt4;",
            ">;",
            "Lcom/shabakaty/downloader/d9;",
            "Z",
            "Lcom/shabakaty/downloader/mr2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/se2$d;->r:Lcom/shabakaty/downloader/ts4;

    iput-object p2, p0, Lcom/shabakaty/downloader/se2$d;->s:Ljava/util/List;

    iput-object p3, p0, Lcom/shabakaty/downloader/se2$d;->t:Lcom/shabakaty/downloader/d9;

    iput-boolean p4, p0, Lcom/shabakaty/downloader/se2$d;->u:Z

    iput-object p5, p0, Lcom/shabakaty/downloader/se2$d;->v:Lcom/shabakaty/downloader/mr2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ve2;

    const-string v0, "kotlinTypeRefiner"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/se2;->a:Lcom/shabakaty/downloader/se2;

    iget-object v1, p0, Lcom/shabakaty/downloader/se2$d;->r:Lcom/shabakaty/downloader/ts4;

    iget-object v2, p0, Lcom/shabakaty/downloader/se2$d;->s:Ljava/util/List;

    invoke-static {v0, v1, p1, v2}, Lcom/shabakaty/downloader/se2;->a(Lcom/shabakaty/downloader/se2;Lcom/shabakaty/downloader/ts4;Lcom/shabakaty/downloader/ve2;Ljava/util/List;)Lcom/shabakaty/downloader/se2$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/se2$b;->a:Lcom/shabakaty/downloader/b74;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/se2$d;->t:Lcom/shabakaty/downloader/d9;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/se2$b;->b:Lcom/shabakaty/downloader/ts4;

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/se2$d;->s:Ljava/util/List;

    .line 9
    iget-boolean v2, p0, Lcom/shabakaty/downloader/se2$d;->u:Z

    .line 10
    iget-object v3, p0, Lcom/shabakaty/downloader/se2$d;->v:Lcom/shabakaty/downloader/mr2;

    .line 11
    invoke-static {v0, p1, v1, v2, v3}, Lcom/shabakaty/downloader/se2;->h(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/ts4;Ljava/util/List;ZLcom/shabakaty/downloader/mr2;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    return-object p1
.end method
