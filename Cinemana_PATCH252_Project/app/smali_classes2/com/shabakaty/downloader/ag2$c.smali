.class public final Lcom/shabakaty/downloader/ag2$c;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaPackageScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ag2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/s72;Lcom/shabakaty/downloader/yf2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/ag2$a;",
        "Lcom/shabakaty/downloader/q20;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ag2;

.field public final synthetic s:Lcom/shabakaty/downloader/bg2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ag2;Lcom/shabakaty/downloader/bg2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ag2$c;->r:Lcom/shabakaty/downloader/ag2;

    iput-object p2, p0, Lcom/shabakaty/downloader/ag2$c;->s:Lcom/shabakaty/downloader/bg2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ag2$a;

    const-string v0, "request"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/v20;

    iget-object v1, p0, Lcom/shabakaty/downloader/ag2$c;->r:Lcom/shabakaty/downloader/ag2;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/ag2;->o:Lcom/shabakaty/downloader/yf2;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/l93;->v:Lcom/shabakaty/downloader/fi1;

    .line 6
    iget-object v2, p1, Lcom/shabakaty/downloader/ag2$a;->a:Lcom/shabakaty/downloader/hw2;

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    .line 8
    iget-object v1, p1, Lcom/shabakaty/downloader/ag2$a;->b:Lcom/shabakaty/downloader/q62;

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/ag2$c;->s:Lcom/shabakaty/downloader/bg2;

    .line 10
    iget-object v2, v2, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 11
    iget-object v2, v2, Lcom/shabakaty/downloader/y72;->c:Lcom/shabakaty/downloader/ae2;

    .line 12
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/ae2;->a(Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/ae2$a;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ag2$c;->s:Lcom/shabakaty/downloader/bg2;

    .line 14
    iget-object v1, v1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 15
    iget-object v1, v1, Lcom/shabakaty/downloader/y72;->c:Lcom/shabakaty/downloader/ae2;

    .line 16
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/ae2;->c(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/ae2$a;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ae2$a;->a()Lcom/shabakaty/downloader/he2;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_2

    move-object v4, v2

    goto :goto_2

    .line 18
    :cond_2
    invoke-interface {v3}, Lcom/shabakaty/downloader/he2;->f()Lcom/shabakaty/downloader/v20;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_3

    .line 19
    invoke-virtual {v4}, Lcom/shabakaty/downloader/v20;->k()Z

    move-result v5

    if-nez v5, :cond_12

    .line 20
    iget-boolean v4, v4, Lcom/shabakaty/downloader/v20;->c:Z

    if-eqz v4, :cond_3

    goto/16 :goto_9

    .line 21
    :cond_3
    iget-object v4, p0, Lcom/shabakaty/downloader/ag2$c;->r:Lcom/shabakaty/downloader/ag2;

    .line 22
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 23
    sget-object v3, Lcom/shabakaty/downloader/ag2$b$b;->a:Lcom/shabakaty/downloader/ag2$b$b;

    goto :goto_4

    .line 24
    :cond_4
    invoke-interface {v3}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v5

    .line 25
    iget-object v5, v5, Lcom/shabakaty/downloader/be2;->a:Lcom/shabakaty/downloader/be2$a;

    .line 26
    sget-object v6, Lcom/shabakaty/downloader/be2$a;->u:Lcom/shabakaty/downloader/be2$a;

    if-ne v5, v6, :cond_7

    .line 27
    iget-object v4, v4, Lcom/shabakaty/downloader/cg2;->b:Lcom/shabakaty/downloader/bg2;

    .line 28
    iget-object v4, v4, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 29
    iget-object v4, v4, Lcom/shabakaty/downloader/y72;->d:Lcom/shabakaty/downloader/bs0;

    .line 30
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/bs0;->f(Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/n20;

    move-result-object v5

    if-nez v5, :cond_5

    move-object v3, v2

    goto :goto_3

    .line 32
    :cond_5
    invoke-virtual {v4}, Lcom/shabakaty/downloader/bs0;->c()Lcom/shabakaty/downloader/or0;

    move-result-object v4

    .line 33
    iget-object v4, v4, Lcom/shabakaty/downloader/or0;->t:Lcom/shabakaty/downloader/u20;

    .line 34
    invoke-interface {v3}, Lcom/shabakaty/downloader/he2;->f()Lcom/shabakaty/downloader/v20;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "classId"

    .line 35
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v4, v4, Lcom/shabakaty/downloader/u20;->b:Lcom/shabakaty/downloader/tm1;

    new-instance v6, Lcom/shabakaty/downloader/u20$a;

    invoke-direct {v6, v3, v5}, Lcom/shabakaty/downloader/u20$a;-><init>(Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/n20;)V

    invoke-interface {v4, v6}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/q20;

    :goto_3
    if-eqz v3, :cond_6

    .line 37
    new-instance v4, Lcom/shabakaty/downloader/ag2$b$a;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/ag2$b$a;-><init>(Lcom/shabakaty/downloader/q20;)V

    move-object v3, v4

    goto :goto_4

    :cond_6
    sget-object v3, Lcom/shabakaty/downloader/ag2$b$b;->a:Lcom/shabakaty/downloader/ag2$b$b;

    goto :goto_4

    .line 38
    :cond_7
    sget-object v3, Lcom/shabakaty/downloader/ag2$b$c;->a:Lcom/shabakaty/downloader/ag2$b$c;

    .line 39
    :goto_4
    instance-of v4, v3, Lcom/shabakaty/downloader/ag2$b$a;

    if-eqz v4, :cond_8

    check-cast v3, Lcom/shabakaty/downloader/ag2$b$a;

    .line 40
    iget-object v2, v3, Lcom/shabakaty/downloader/ag2$b$a;->a:Lcom/shabakaty/downloader/q20;

    goto/16 :goto_9

    .line 41
    :cond_8
    instance-of v4, v3, Lcom/shabakaty/downloader/ag2$b$c;

    if-eqz v4, :cond_9

    goto/16 :goto_9

    .line 42
    :cond_9
    instance-of v3, v3, Lcom/shabakaty/downloader/ag2$b$b;

    if-eqz v3, :cond_13

    .line 43
    iget-object p1, p1, Lcom/shabakaty/downloader/ag2$a;->b:Lcom/shabakaty/downloader/q62;

    if-nez p1, :cond_c

    .line 44
    iget-object p1, p0, Lcom/shabakaty/downloader/ag2$c;->s:Lcom/shabakaty/downloader/bg2;

    .line 45
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 46
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->b:Lcom/shabakaty/downloader/u62;

    .line 47
    new-instance v3, Lcom/shabakaty/downloader/u62$a;

    if-nez v1, :cond_a

    goto :goto_5

    .line 48
    :cond_a
    instance-of v4, v1, Lcom/shabakaty/downloader/ae2$a$a;

    if-nez v4, :cond_b

    move-object v1, v2

    :cond_b
    check-cast v1, Lcom/shabakaty/downloader/ae2$a$a;

    :goto_5
    const/4 v1, 0x4

    .line 49
    invoke-direct {v3, v0, v2, v2, v1}, Lcom/shabakaty/downloader/u62$a;-><init>(Lcom/shabakaty/downloader/v20;[BLcom/shabakaty/downloader/q62;I)V

    .line 50
    invoke-interface {p1, v3}, Lcom/shabakaty/downloader/u62;->a(Lcom/shabakaty/downloader/u62$a;)Lcom/shabakaty/downloader/q62;

    move-result-object p1

    :cond_c
    if-nez p1, :cond_d

    const/4 v1, 0x0

    goto :goto_6

    .line 51
    :cond_d
    invoke-interface {p1}, Lcom/shabakaty/downloader/q62;->k()I

    move-result v1

    :goto_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_f

    .line 52
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find kotlin binary class for light class created by kotlin binary file\nJavaClass: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nClassId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\nfindKotlinClass(JavaClass) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v4, p0, Lcom/shabakaty/downloader/ag2$c;->s:Lcom/shabakaty/downloader/bg2;

    .line 55
    iget-object v4, v4, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 56
    iget-object v4, v4, Lcom/shabakaty/downloader/y72;->c:Lcom/shabakaty/downloader/ae2;

    const-string v5, "<this>"

    .line 57
    invoke-static {v4, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "javaClass"

    invoke-static {p1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {v4, p1}, Lcom/shabakaty/downloader/ae2;->a(Lcom/shabakaty/downloader/q62;)Lcom/shabakaty/downloader/ae2$a;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ae2$a;->a()Lcom/shabakaty/downloader/he2;

    move-result-object v2

    .line 59
    :goto_7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nfindKotlinClass(ClassId) = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object p1, p0, Lcom/shabakaty/downloader/ag2$c;->s:Lcom/shabakaty/downloader/bg2;

    .line 61
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 62
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->c:Lcom/shabakaty/downloader/ae2;

    .line 63
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/he0;->g(Lcom/shabakaty/downloader/ae2;Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/he2;

    move-result-object p1

    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-nez p1, :cond_10

    move-object v0, v2

    goto :goto_8

    .line 66
    :cond_10
    invoke-interface {p1}, Lcom/shabakaty/downloader/q62;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_12

    .line 67
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->d()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fi1;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ag2$c;->r:Lcom/shabakaty/downloader/ag2;

    .line 68
    iget-object v1, v1, Lcom/shabakaty/downloader/ag2;->o:Lcom/shabakaty/downloader/yf2;

    .line 69
    iget-object v1, v1, Lcom/shabakaty/downloader/l93;->v:Lcom/shabakaty/downloader/fi1;

    .line 70
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_9

    .line 71
    :cond_11
    new-instance v0, Lcom/shabakaty/downloader/uf2;

    iget-object v1, p0, Lcom/shabakaty/downloader/ag2$c;->s:Lcom/shabakaty/downloader/bg2;

    iget-object v3, p0, Lcom/shabakaty/downloader/ag2$c;->r:Lcom/shabakaty/downloader/ag2;

    .line 72
    iget-object v3, v3, Lcom/shabakaty/downloader/ag2;->o:Lcom/shabakaty/downloader/yf2;

    .line 73
    invoke-direct {v0, v1, v3, p1, v2}, Lcom/shabakaty/downloader/uf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/q20;)V

    .line 74
    iget-object p1, p0, Lcom/shabakaty/downloader/ag2$c;->s:Lcom/shabakaty/downloader/bg2;

    .line 75
    iget-object p1, p1, Lcom/shabakaty/downloader/bg2;->a:Lcom/shabakaty/downloader/y72;

    .line 76
    iget-object p1, p1, Lcom/shabakaty/downloader/y72;->s:Lcom/shabakaty/downloader/w62;

    .line 77
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/w62;->a(Lcom/shabakaty/downloader/t62;)V

    move-object v2, v0

    :cond_12
    :goto_9
    return-object v2

    :cond_13
    new-instance p1, Lcom/shabakaty/downloader/rz2;

    invoke-direct {p1}, Lcom/shabakaty/downloader/rz2;-><init>()V

    throw p1
.end method
