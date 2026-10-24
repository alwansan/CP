.class public final Lcom/shabakaty/downloader/tb2$c;
.super Lcom/shabakaty/downloader/tb2;
.source "RuntimeTypeMapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tb2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/yh3;

.field public final b:Lcom/shabakaty/downloader/vi3;

.field public final c:Lcom/shabakaty/downloader/ub2$d;

.field public final d:Lcom/shabakaty/downloader/jw2;

.field public final e:Lcom/shabakaty/downloader/bu4;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yh3;Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/ub2$d;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;)V
    .locals 2

    const-string v0, "proto"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/tb2;-><init>(Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tb2$c;->a:Lcom/shabakaty/downloader/yh3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/tb2$c;->b:Lcom/shabakaty/downloader/vi3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/tb2$c;->c:Lcom/shabakaty/downloader/ub2$d;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/tb2$c;->d:Lcom/shabakaty/downloader/jw2;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/tb2$c;->e:Lcom/shabakaty/downloader/bu4;

    .line 7
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ub2$d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p1, p3, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    .line 9
    iget p1, p1, Lcom/shabakaty/downloader/ub2$c;->t:I

    .line 10
    invoke-interface {p4, p1}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p3, Lcom/shabakaty/downloader/ub2$d;->v:Lcom/shabakaty/downloader/ub2$c;

    .line 12
    iget p2, p2, Lcom/shabakaty/downloader/ub2$c;->u:I

    .line 13
    invoke-interface {p4, p2}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 14
    :cond_0
    sget-object p3, Lcom/shabakaty/downloader/vb2;->a:Lcom/shabakaty/downloader/vb2;

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p3, p2, p4, p5, v0}, Lcom/shabakaty/downloader/vb2;->b(Lcom/shabakaty/downloader/vi3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Z)Lcom/shabakaty/downloader/nb2$a;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 16
    iget-object p3, p2, Lcom/shabakaty/downloader/nb2$a;->a:Ljava/lang/String;

    .line 17
    iget-object p2, p2, Lcom/shabakaty/downloader/nb2$a;->b:Ljava/lang/String;

    .line 18
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/shabakaty/downloader/sa2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p3

    const-string v0, "descriptor.containingDeclaration"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/lr0;->d:Lcom/shabakaty/downloader/mr0;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "$"

    if-eqz v0, :cond_2

    instance-of v0, p3, Lcom/shabakaty/downloader/xr0;

    if-eqz v0, :cond_2

    .line 21
    check-cast p3, Lcom/shabakaty/downloader/xr0;

    .line 22
    iget-object p1, p3, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 23
    sget-object p3, Lcom/shabakaty/downloader/ub2;->i:Lcom/shabakaty/downloader/pp1$f;

    const-string v0, "classModuleName"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/shabakaty/downloader/nh3;->l(Lcom/shabakaty/downloader/pp1$d;Lcom/shabakaty/downloader/pp1$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    const-string p1, "main"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p4, p1}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    :goto_0
    sget-object p3, Lcom/shabakaty/downloader/lw2;->a:Lcom/shabakaty/downloader/mq3;

    const-string p3, "name"

    .line 25
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object p3, Lcom/shabakaty/downloader/lw2;->a:Lcom/shabakaty/downloader/mq3;

    const-string p4, "_"

    invoke-virtual {p3, p1, p4}, Lcom/shabakaty/downloader/mq3;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 28
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ir2;->g()Lcom/shabakaty/downloader/mr0;

    move-result-object p4

    sget-object v0, Lcom/shabakaty/downloader/lr0;->a:Lcom/shabakaty/downloader/mr0;

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    instance-of p3, p3, Lcom/shabakaty/downloader/k93;

    if-eqz p3, :cond_3

    .line 29
    check-cast p1, Lcom/shabakaty/downloader/hs0;

    .line 30
    iget-object p1, p1, Lcom/shabakaty/downloader/hs0;->V:Lcom/shabakaty/downloader/as0;

    .line 31
    instance-of p3, p1, Lcom/shabakaty/downloader/qb2;

    if-eqz p3, :cond_3

    check-cast p1, Lcom/shabakaty/downloader/qb2;

    .line 32
    iget-object p3, p1, Lcom/shabakaty/downloader/qb2;->c:Lcom/shabakaty/downloader/kb2;

    if-eqz p3, :cond_3

    .line 33
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qb2;->e()Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    const-string p3, "()"

    .line 34
    invoke-static {p5, p1, p3, p2}, Lcom/shabakaty/downloader/il3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    :goto_2
    iput-object p1, p0, Lcom/shabakaty/downloader/tb2$c;->f:Ljava/lang/String;

    return-void

    .line 36
    :cond_4
    new-instance p2, Lcom/shabakaty/downloader/me2;

    const-string p3, "No field signature for property: "

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tb2$c;->f:Ljava/lang/String;

    return-object v0
.end method
