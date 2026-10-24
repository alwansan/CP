.class public final Lcom/shabakaty/downloader/dr4$c;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/shabakaty/downloader/xr4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dr4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/cu4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cu4<",
            "*>;"
        }
    .end annotation
.end field

.field public final s:Z

.field public final t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final u:Lcom/shabakaty/downloader/ia2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ia2<",
            "*>;"
        }
    .end annotation
.end field

.field public final v:Lcom/shabakaty/downloader/y92;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y92<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/shabakaty/downloader/cu4;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/cu4<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of p4, p1, Lcom/shabakaty/downloader/ia2;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 3
    move-object p4, p1

    check-cast p4, Lcom/shabakaty/downloader/ia2;

    goto :goto_0

    :cond_0
    move-object p4, v0

    .line 4
    :goto_0
    iput-object p4, p0, Lcom/shabakaty/downloader/dr4$c;->u:Lcom/shabakaty/downloader/ia2;

    .line 5
    instance-of v1, p1, Lcom/shabakaty/downloader/y92;

    if-eqz v1, :cond_1

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/y92;

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 7
    :goto_1
    iput-object p1, p0, Lcom/shabakaty/downloader/dr4$c;->v:Lcom/shabakaty/downloader/y92;

    if-nez p4, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    .line 8
    :goto_3
    invoke-static {p1}, Lcom/shabakaty/downloader/iq6;->b(Z)V

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/dr4$c;->r:Lcom/shabakaty/downloader/cu4;

    .line 10
    iput-boolean p3, p0, Lcom/shabakaty/downloader/dr4$c;->s:Z

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/dr4$c;->t:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/lr1;",
            "Lcom/shabakaty/downloader/cu4<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dr4$c;->r:Lcom/shabakaty/downloader/cu4;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/cu4;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/dr4$c;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/dr4$c;->r:Lcom/shabakaty/downloader/cu4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cu4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/shabakaty/downloader/cu4;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/dr4$c;->t:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/cu4;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/dr4;

    iget-object v2, p0, Lcom/shabakaty/downloader/dr4$c;->u:Lcom/shabakaty/downloader/ia2;

    iget-object v3, p0, Lcom/shabakaty/downloader/dr4$c;->v:Lcom/shabakaty/downloader/y92;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/dr4;-><init>(Lcom/shabakaty/downloader/ia2;Lcom/shabakaty/downloader/y92;Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;Lcom/shabakaty/downloader/xr4;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
