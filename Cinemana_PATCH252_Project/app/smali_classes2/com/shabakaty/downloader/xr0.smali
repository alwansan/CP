.class public final Lcom/shabakaty/downloader/xr0;
.super Lcom/shabakaty/downloader/p;
.source "DeserializedClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/qm0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/xr0$b;,
        Lcom/shabakaty/downloader/xr0$a;,
        Lcom/shabakaty/downloader/xr0$c;
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/mr0;

.field public final B:Lcom/shabakaty/downloader/w20;

.field public final C:Lcom/shabakaty/downloader/rr0;

.field public final D:Lcom/shabakaty/downloader/nr2;

.field public final E:Lcom/shabakaty/downloader/xr0$b;

.field public final F:Lcom/shabakaty/downloader/py3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/py3<",
            "Lcom/shabakaty/downloader/xr0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final G:Lcom/shabakaty/downloader/xr0$c;

.field public final H:Lcom/shabakaty/downloader/qm0;

.field public final I:Lcom/shabakaty/downloader/w13;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/w13<",
            "Lcom/shabakaty/downloader/l20;",
            ">;"
        }
    .end annotation
.end field

.field public final J:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/l20;",
            ">;>;"
        }
    .end annotation
.end field

.field public final K:Lcom/shabakaty/downloader/w13;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/w13<",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation
.end field

.field public final L:Lcom/shabakaty/downloader/d03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d03<",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/q20;",
            ">;>;"
        }
    .end annotation
.end field

.field public final M:Lcom/shabakaty/downloader/w13;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/w13<",
            "Lcom/shabakaty/downloader/a12<",
            "Lcom/shabakaty/downloader/b74;",
            ">;>;"
        }
    .end annotation
.end field

.field public final N:Lcom/shabakaty/downloader/gj3$a;

.field public final O:Lcom/shabakaty/downloader/d9;

.field public final v:Lcom/shabakaty/downloader/ji3;

.field public final w:Lcom/shabakaty/downloader/gm;

.field public final x:Lcom/shabakaty/downloader/s94;

.field public final y:Lcom/shabakaty/downloader/v20;

.field public final z:Lcom/shabakaty/downloader/eu2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/ji3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/s94;)V
    .locals 10

    sget-object v0, Lcom/shabakaty/downloader/w20;->t:Lcom/shabakaty/downloader/w20;

    const-string v1, "outerContext"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "classProto"

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    invoke-static {p3, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    invoke-static {p4, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sourceElement"

    invoke-static {p5, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 3
    iget v2, p2, Lcom/shabakaty/downloader/ji3;->v:I

    .line 4
    invoke-static {p3, v2}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/v20;->j()Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    .line 5
    invoke-direct {p0, v1, v2}, Lcom/shabakaty/downloader/p;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/hw2;)V

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 7
    iput-object p4, p0, Lcom/shabakaty/downloader/xr0;->w:Lcom/shabakaty/downloader/gm;

    .line 8
    iput-object p5, p0, Lcom/shabakaty/downloader/xr0;->x:Lcom/shabakaty/downloader/s94;

    .line 9
    iget v1, p2, Lcom/shabakaty/downloader/ji3;->v:I

    .line 10
    invoke-static {p3, v1}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/xr0;->y:Lcom/shabakaty/downloader/v20;

    .line 11
    sget-object v1, Lcom/shabakaty/downloader/hj3;->a:Lcom/shabakaty/downloader/hj3;

    sget-object v2, Lcom/shabakaty/downloader/zd1;->e:Lcom/shabakaty/downloader/zd1$d;

    .line 12
    iget v3, p2, Lcom/shabakaty/downloader/ji3;->u:I

    .line 13
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/si3;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/hj3;->a(Lcom/shabakaty/downloader/si3;)Lcom/shabakaty/downloader/eu2;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/xr0;->z:Lcom/shabakaty/downloader/eu2;

    .line 14
    sget-object v2, Lcom/shabakaty/downloader/zd1;->d:Lcom/shabakaty/downloader/zd1$d;

    .line 15
    iget v3, p2, Lcom/shabakaty/downloader/ji3;->u:I

    .line 16
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/fj3;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/ij3;->a(Lcom/shabakaty/downloader/hj3;Lcom/shabakaty/downloader/fj3;)Lcom/shabakaty/downloader/mr0;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/xr0;->A:Lcom/shabakaty/downloader/mr0;

    .line 17
    sget-object v1, Lcom/shabakaty/downloader/zd1;->f:Lcom/shabakaty/downloader/zd1$d;

    .line 18
    iget v2, p2, Lcom/shabakaty/downloader/ji3;->u:I

    .line 19
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ji3$c;

    .line 20
    sget-object v2, Lcom/shabakaty/downloader/w20;->r:Lcom/shabakaty/downloader/w20;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/shabakaty/downloader/hj3$a;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 21
    :pswitch_0
    sget-object v2, Lcom/shabakaty/downloader/w20;->w:Lcom/shabakaty/downloader/w20;

    goto :goto_1

    .line 22
    :pswitch_1
    sget-object v2, Lcom/shabakaty/downloader/w20;->v:Lcom/shabakaty/downloader/w20;

    goto :goto_1

    .line 23
    :pswitch_2
    sget-object v2, Lcom/shabakaty/downloader/w20;->u:Lcom/shabakaty/downloader/w20;

    goto :goto_1

    :pswitch_3
    move-object v2, v0

    goto :goto_1

    .line 24
    :pswitch_4
    sget-object v2, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    .line 25
    :goto_1
    iput-object v2, p0, Lcom/shabakaty/downloader/xr0;->B:Lcom/shabakaty/downloader/w20;

    .line 26
    iget-object v5, p2, Lcom/shabakaty/downloader/ji3;->x:Ljava/util/List;

    const-string v1, "classProto.typeParameterList"

    .line 27
    invoke-static {v5, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/shabakaty/downloader/bu4;

    .line 28
    iget-object v1, p2, Lcom/shabakaty/downloader/ji3;->N:Lcom/shabakaty/downloader/bj3;

    const-string v3, "classProto.typeTable"

    .line 29
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v1}, Lcom/shabakaty/downloader/bu4;-><init>(Lcom/shabakaty/downloader/bj3;)V

    .line 30
    sget-object v1, Lcom/shabakaty/downloader/f05;->b:Lcom/shabakaty/downloader/f05$a;

    .line 31
    iget-object v3, p2, Lcom/shabakaty/downloader/ji3;->P:Lcom/shabakaty/downloader/ej3;

    const-string v4, "classProto.versionRequirementTable"

    .line 32
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/f05$a;->a(Lcom/shabakaty/downloader/ej3;)Lcom/shabakaty/downloader/f05;

    move-result-object v8

    move-object v3, p1

    move-object v4, p0

    move-object v6, p3

    move-object v9, p4

    .line 33
    invoke-virtual/range {v3 .. v9}, Lcom/shabakaty/downloader/rr0;->a(Lcom/shabakaty/downloader/qm0;Ljava/util/List;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/f05;Lcom/shabakaty/downloader/gm;)Lcom/shabakaty/downloader/rr0;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    if-ne v2, v0, :cond_1

    .line 34
    new-instance p4, Lcom/shabakaty/downloader/rc4;

    .line 35
    iget-object v1, p3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 36
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 37
    invoke-direct {p4, v1, p0}, Lcom/shabakaty/downloader/rc4;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/q20;)V

    goto :goto_2

    :cond_1
    sget-object p4, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    :goto_2
    iput-object p4, p0, Lcom/shabakaty/downloader/xr0;->D:Lcom/shabakaty/downloader/nr2;

    .line 38
    new-instance p4, Lcom/shabakaty/downloader/xr0$b;

    invoke-direct {p4, p0}, Lcom/shabakaty/downloader/xr0$b;-><init>(Lcom/shabakaty/downloader/xr0;)V

    iput-object p4, p0, Lcom/shabakaty/downloader/xr0;->E:Lcom/shabakaty/downloader/xr0$b;

    .line 39
    sget-object p4, Lcom/shabakaty/downloader/py3;->e:Lcom/shabakaty/downloader/py3$a;

    .line 40
    iget-object v1, p3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 41
    iget-object v3, v1, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 42
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->q:Lcom/shabakaty/downloader/ez2;

    .line 43
    invoke-interface {v1}, Lcom/shabakaty/downloader/ez2;->b()Lcom/shabakaty/downloader/ve2;

    move-result-object v1

    new-instance v4, Lcom/shabakaty/downloader/xr0$h;

    invoke-direct {v4, p0}, Lcom/shabakaty/downloader/xr0$h;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, p0, v3, v1, v4}, Lcom/shabakaty/downloader/py3$a;->a(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ve2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/py3;

    move-result-object p4

    iput-object p4, p0, Lcom/shabakaty/downloader/xr0;->F:Lcom/shabakaty/downloader/py3;

    const/4 p4, 0x0

    if-ne v2, v0, :cond_2

    .line 44
    new-instance v0, Lcom/shabakaty/downloader/xr0$c;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/xr0$c;-><init>(Lcom/shabakaty/downloader/xr0;)V

    goto :goto_3

    :cond_2
    move-object v0, p4

    :goto_3
    iput-object v0, p0, Lcom/shabakaty/downloader/xr0;->G:Lcom/shabakaty/downloader/xr0$c;

    .line 45
    iget-object p1, p1, Lcom/shabakaty/downloader/rr0;->c:Lcom/shabakaty/downloader/qm0;

    .line 46
    iput-object p1, p0, Lcom/shabakaty/downloader/xr0;->H:Lcom/shabakaty/downloader/qm0;

    .line 47
    iget-object v0, p3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 48
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 49
    new-instance v1, Lcom/shabakaty/downloader/xr0$i;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/xr0$i;-><init>(Lcom/shabakaty/downloader/xr0;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->d(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/w13;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/xr0;->I:Lcom/shabakaty/downloader/w13;

    .line 50
    iget-object v0, p3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 51
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 52
    new-instance v1, Lcom/shabakaty/downloader/xr0$f;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/xr0$f;-><init>(Lcom/shabakaty/downloader/xr0;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/xr0;->J:Lcom/shabakaty/downloader/d03;

    .line 53
    iget-object v0, p3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 54
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 55
    new-instance v1, Lcom/shabakaty/downloader/xr0$e;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/xr0$e;-><init>(Lcom/shabakaty/downloader/xr0;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->d(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/w13;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/xr0;->K:Lcom/shabakaty/downloader/w13;

    .line 56
    iget-object v0, p3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 57
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 58
    new-instance v1, Lcom/shabakaty/downloader/xr0$j;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/xr0$j;-><init>(Lcom/shabakaty/downloader/xr0;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/xr0;->L:Lcom/shabakaty/downloader/d03;

    .line 59
    iget-object v0, p3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 60
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 61
    new-instance v1, Lcom/shabakaty/downloader/xr0$g;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/xr0$g;-><init>(Lcom/shabakaty/downloader/xr0;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/md4;->d(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/w13;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/xr0;->M:Lcom/shabakaty/downloader/w13;

    .line 62
    new-instance v0, Lcom/shabakaty/downloader/gj3$a;

    .line 63
    iget-object v3, p3, Lcom/shabakaty/downloader/rr0;->b:Lcom/shabakaty/downloader/jw2;

    .line 64
    iget-object v4, p3, Lcom/shabakaty/downloader/rr0;->d:Lcom/shabakaty/downloader/bu4;

    .line 65
    instance-of v1, p1, Lcom/shabakaty/downloader/xr0;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/shabakaty/downloader/xr0;

    goto :goto_4

    :cond_3
    move-object p1, p4

    :goto_4
    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    iget-object p4, p1, Lcom/shabakaty/downloader/xr0;->N:Lcom/shabakaty/downloader/gj3$a;

    :goto_5
    move-object v6, p4

    move-object v1, v0

    move-object v2, p2

    move-object v5, p5

    .line 66
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/gj3$a;-><init>(Lcom/shabakaty/downloader/ji3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/gj3$a;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/xr0;->N:Lcom/shabakaty/downloader/gj3$a;

    .line 67
    sget-object p1, Lcom/shabakaty/downloader/zd1;->c:Lcom/shabakaty/downloader/zd1$b;

    .line 68
    iget p2, p2, Lcom/shabakaty/downloader/ji3;->u:I

    .line 69
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zd1$b;->c(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 70
    sget p1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object p1, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    goto :goto_6

    .line 71
    :cond_5
    new-instance p1, Lcom/shabakaty/downloader/xz2;

    .line 72
    iget-object p2, p3, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 73
    iget-object p2, p2, Lcom/shabakaty/downloader/or0;->a:Lcom/shabakaty/downloader/md4;

    .line 74
    new-instance p3, Lcom/shabakaty/downloader/xr0$d;

    invoke-direct {p3, p0}, Lcom/shabakaty/downloader/xr0$d;-><init>(Lcom/shabakaty/downloader/xr0;)V

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/xz2;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V

    .line 75
    :goto_6
    iput-object p1, p0, Lcom/shabakaty/downloader/xr0;->O:Lcom/shabakaty/downloader/d9;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->h:Lcom/shabakaty/downloader/xs4;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xs4;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/shabakaty/downloader/a12;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/a12<",
            "Lcom/shabakaty/downloader/b74;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->M:Lcom/shabakaty/downloader/w13;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/a12;

    return-object v0
.end method

.method public F()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->f:Lcom/shabakaty/downloader/zd1$d;

    iget-object v1, p0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/ji3;->u:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/ji3$c;->y:Lcom/shabakaty/downloader/ji3$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->l:Lcom/shabakaty/downloader/zd1$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/ji3;->u:I

    const-string v2, "IS_FUN_INTERFACE.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public N0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->F:Lcom/shabakaty/downloader/py3;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/py3;->a(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    return-object p1
.end method

.method public Q()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/q20;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->L:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public Q0()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->h:Lcom/shabakaty/downloader/zd1$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/ji3;->u:I

    const-string v2, "IS_DATA.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->k:Lcom/shabakaty/downloader/zd1$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/ji3;->u:I

    const-string v2, "IS_INLINE_CLASS.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->w:Lcom/shabakaty/downloader/gm;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gm;->a(III)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public S()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->j:Lcom/shabakaty/downloader/zd1$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/ji3;->u:I

    const-string v2, "IS_EXPECT_CLASS.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public T()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->g:Lcom/shabakaty/downloader/zd1$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/ji3;->u:I

    const-string v2, "IS_INNER.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final T0()Lcom/shabakaty/downloader/xr0$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->F:Lcom/shabakaty/downloader/py3;

    iget-object v1, p0, Lcom/shabakaty/downloader/xr0;->C:Lcom/shabakaty/downloader/rr0;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->q:Lcom/shabakaty/downloader/ez2;

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/ez2;->b()Lcom/shabakaty/downloader/ve2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/py3;->a(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xr0$a;

    return-object v0
.end method

.method public Y()Lcom/shabakaty/downloader/l20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->I:Lcom/shabakaty/downloader/w13;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/l20;

    return-object v0
.end method

.method public Z()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->D:Lcom/shabakaty/downloader/nr2;

    return-object v0
.end method

.method public b0()Lcom/shabakaty/downloader/q20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->K:Lcom/shabakaty/downloader/w13;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q20;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->H:Lcom/shabakaty/downloader/qm0;

    return-object v0
.end method

.method public g()Lcom/shabakaty/downloader/mr0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->A:Lcom/shabakaty/downloader/mr0;

    return-object v0
.end method

.method public k()Lcom/shabakaty/downloader/s94;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->x:Lcom/shabakaty/downloader/s94;

    return-object v0
.end method

.method public l()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->i:Lcom/shabakaty/downloader/zd1$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/ji3;->u:I

    const-string v2, "IS_EXTERNAL_CLASS.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public m()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->E:Lcom/shabakaty/downloader/xr0$b;

    return-object v0
.end method

.method public n()Lcom/shabakaty/downloader/eu2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->z:Lcom/shabakaty/downloader/eu2;

    return-object v0
.end method

.method public o()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/l20;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->J:Lcom/shabakaty/downloader/d03;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "deserialized "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xr0;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "expect "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/p;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/shabakaty/downloader/w20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->B:Lcom/shabakaty/downloader/w20;

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->O:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method

.method public z()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zd1;->k:Lcom/shabakaty/downloader/zd1$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/xr0;->v:Lcom/shabakaty/downloader/ji3;

    .line 2
    iget v1, v1, Lcom/shabakaty/downloader/ji3;->u:I

    const-string v2, "IS_INLINE_CLASS.get(classProto.flags)"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/shabakaty/downloader/xr0;->w:Lcom/shabakaty/downloader/gm;

    const/4 v3, 0x4

    .line 4
    iget v4, v0, Lcom/shabakaty/downloader/gm;->b:I

    if-ge v4, v2, :cond_0

    goto :goto_0

    :cond_0
    if-le v4, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget v4, v0, Lcom/shabakaty/downloader/gm;->c:I

    if-ge v4, v3, :cond_2

    goto :goto_0

    :cond_2
    if-le v4, v3, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget v0, v0, Lcom/shabakaty/downloader/gm;->d:I

    if-gt v0, v2, :cond_4

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method
