.class public Lcom/shabakaty/downloader/qs4;
.super Ljava/lang/Object;
.source "AbstractTypeChecker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/qs4$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/shabakaty/downloader/yt4;

.field public final e:Lcom/shabakaty/downloader/p1;

.field public final f:Lcom/shabakaty/downloader/q1;

.field public g:I

.field public h:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shabakaty/downloader/d74;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/d74;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZLcom/shabakaty/downloader/yt4;Lcom/shabakaty/downloader/p1;Lcom/shabakaty/downloader/q1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/qs4;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/qs4;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/qs4;->c:Z

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/qs4;->d:Lcom/shabakaty/downloader/yt4;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/qs4;->e:Lcom/shabakaty/downloader/p1;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/qs4;->f:Lcom/shabakaty/downloader/q1;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/te2;Lcom/shabakaty/downloader/te2;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "subType"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "superType"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qs4;->h:Ljava/util/ArrayDeque;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qs4;->i:Ljava/util/Set;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qs4;->h:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/qs4;->h:Ljava/util/ArrayDeque;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qs4;->i:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/f94$b;->a()Lcom/shabakaty/downloader/f94;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/qs4;->i:Ljava/util/Set;

    :cond_1
    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qs4;->e:Lcom/shabakaty/downloader/p1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/p1;->a(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qs4;->f:Lcom/shabakaty/downloader/q1;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/q1;->a(Lcom/shabakaty/downloader/te2;)Lcom/shabakaty/downloader/te2;

    move-result-object p1

    return-object p1
.end method
