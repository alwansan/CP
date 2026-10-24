.class public final Lcom/shabakaty/downloader/rp0;
.super Lcom/shabakaty/downloader/zp0;
.source "SpecialTypes.kt"

# interfaces
.implements Lcom/shabakaty/downloader/gh0;
.implements Lcom/shabakaty/downloader/sp0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/rp0$a;
    }
.end annotation


# static fields
.field public static final u:Lcom/shabakaty/downloader/rp0$a;


# instance fields
.field public final s:Lcom/shabakaty/downloader/b74;

.field public final t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/rp0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/rp0$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/rp0;->u:Lcom/shabakaty/downloader/rp0$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/b74;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/zp0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/rp0;->t:Z

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/b74;ZLcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/shabakaty/downloader/zp0;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    .line 6
    iput-boolean p2, p0, Lcom/shabakaty/downloader/rp0;->t:Z

    return-void
.end method


# virtual methods
.method public N()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/iz2;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/kt4;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public U0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Z0(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/qw4;
    .locals 2

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/rp0;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    iget-boolean v1, p0, Lcom/shabakaty/downloader/rp0;->t:Z

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/rp0;-><init>(Lcom/shabakaty/downloader/b74;Z)V

    return-object v0
.end method

.method public a1(Z)Lcom/shabakaty/downloader/b74;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/b74;->a1(Z)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;
    .locals 2

    const-string v0, "newAnnotations"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/rp0;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    .line 4
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/b74;->b1(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    iget-boolean v1, p0, Lcom/shabakaty/downloader/rp0;->t:Z

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/rp0;-><init>(Lcom/shabakaty/downloader/b74;Z)V

    return-object v0
.end method

.method public c1()Lcom/shabakaty/downloader/b74;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    return-object v0
.end method

.method public e1(Lcom/shabakaty/downloader/b74;)Lcom/shabakaty/downloader/zp0;
    .locals 2

    const-string v0, "delegate"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/rp0;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/rp0;->t:Z

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/rp0;-><init>(Lcom/shabakaty/downloader/b74;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/rp0;->s:Lcom/shabakaty/downloader/b74;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " & Any"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w0(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;
    .locals 1

    const-string v0, "replacement"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->W0()Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/rp0;->t:Z

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/nh3;->z(Lcom/shabakaty/downloader/qw4;Z)Lcom/shabakaty/downloader/qw4;

    move-result-object p1

    return-object p1
.end method
