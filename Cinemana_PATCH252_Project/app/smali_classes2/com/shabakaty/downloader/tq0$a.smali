.class public Lcom/shabakaty/downloader/tq0$a;
.super Lcom/shabakaty/downloader/m20;
.source "DescriptorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/s94;Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    if-eqz p2, :cond_a

    const/4 v3, 0x0

    .line 1
    sget v1, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v4, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    const/4 v5, 0x1

    sget-object v6, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/m20;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/vc0;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    sget v1, Lcom/shabakaty/downloader/gr0;->a:I

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/q20;->w()Lcom/shabakaty/downloader/w20;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/shabakaty/downloader/w20;->t:Lcom/shabakaty/downloader/w20;

    if-eq v1, v2, :cond_8

    invoke-virtual {v1}, Lcom/shabakaty/downloader/w20;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->v(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_2

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/lr0;->c:Lcom/shabakaty/downloader/mr0;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x32

    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->a(I)V

    throw v0

    .line 7
    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/lr0;->a:Lcom/shabakaty/downloader/mr0;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0x33

    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->a(I)V

    throw v0

    .line 8
    :cond_4
    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->n(Lcom/shabakaty/downloader/qm0;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/lr0;->k:Lcom/shabakaty/downloader/mr0;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/16 p1, 0x34

    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->a(I)V

    throw v0

    .line 10
    :cond_6
    sget-object p1, Lcom/shabakaty/downloader/lr0;->e:Lcom/shabakaty/downloader/mr0;

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/16 p1, 0x35

    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->a(I)V

    throw v0

    .line 11
    :cond_8
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/lr0;->a:Lcom/shabakaty/downloader/mr0;

    if-eqz p1, :cond_9

    .line 12
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/m20;->e1(Ljava/util/List;Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/m20;

    return-void

    :cond_9
    const/16 p1, 0x31

    .line 13
    invoke-static {p1}, Lcom/shabakaty/downloader/gr0;->a(I)V

    throw v0

    :cond_a
    const/4 p1, 0x1

    .line 14
    invoke-static {p1}, Lcom/shabakaty/downloader/tq0$a;->N(I)V

    throw v0

    :cond_b
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/shabakaty/downloader/tq0$a;->N(I)V

    throw v0
.end method

.method public static synthetic N(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "containingClass"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "source"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory$DefaultClassConstructorDescriptor"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "<init>"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
