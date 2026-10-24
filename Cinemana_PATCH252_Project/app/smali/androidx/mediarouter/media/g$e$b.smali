.class public Landroidx/mediarouter/media/g$e$b;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroidx/mediarouter/media/c$b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/g$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/media/g$e;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/g$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/g$e$b;->a:Landroidx/mediarouter/media/g$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/mediarouter/media/c$b;Landroidx/mediarouter/media/b;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/mediarouter/media/c$b;",
            "Landroidx/mediarouter/media/b;",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/c$b$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/g$e$b;->a:Landroidx/mediarouter/media/g$e;

    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->s:Landroidx/mediarouter/media/c$e;

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 2
    iget-object p1, v0, Landroidx/mediarouter/media/g$e;->r:Landroidx/mediarouter/media/g$h;

    .line 3
    iget-object p1, p1, Landroidx/mediarouter/media/g$h;->a:Landroidx/mediarouter/media/g$g;

    .line 4
    invoke-virtual {p2}, Landroidx/mediarouter/media/b;->i()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/mediarouter/media/g$e$b;->a:Landroidx/mediarouter/media/g$e;

    invoke-virtual {v1, p1, v0}, Landroidx/mediarouter/media/g$e;->b(Landroidx/mediarouter/media/g$g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v4, Landroidx/mediarouter/media/g$h;

    invoke-direct {v4, p1, v0, v1}, Landroidx/mediarouter/media/g$h;-><init>(Landroidx/mediarouter/media/g$g;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4, p2}, Landroidx/mediarouter/media/g$h;->j(Landroidx/mediarouter/media/b;)I

    .line 8
    iget-object v3, p0, Landroidx/mediarouter/media/g$e$b;->a:Landroidx/mediarouter/media/g$e;

    iget-object p1, v3, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    if-ne p1, v4, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v5, v3, Landroidx/mediarouter/media/g$e;->s:Landroidx/mediarouter/media/c$e;

    const/4 v6, 0x3

    iget-object v7, v3, Landroidx/mediarouter/media/g$e;->r:Landroidx/mediarouter/media/g$h;

    move-object v2, v3

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Landroidx/mediarouter/media/g$e;->j(Landroidx/mediarouter/media/g$e;Landroidx/mediarouter/media/g$h;Landroidx/mediarouter/media/c$e;ILandroidx/mediarouter/media/g$h;Ljava/util/Collection;)V

    .line 10
    iget-object p1, p0, Landroidx/mediarouter/media/g$e$b;->a:Landroidx/mediarouter/media/g$e;

    const/4 p2, 0x0

    iput-object p2, p1, Landroidx/mediarouter/media/g$e;->r:Landroidx/mediarouter/media/g$h;

    .line 11
    iput-object p2, p1, Landroidx/mediarouter/media/g$e;->s:Landroidx/mediarouter/media/c$e;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    .line 13
    iget-object p1, v0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v0, p1, p2}, Landroidx/mediarouter/media/g$e;->p(Landroidx/mediarouter/media/g$h;Landroidx/mediarouter/media/b;)I

    .line 14
    :cond_2
    iget-object p1, p0, Landroidx/mediarouter/media/g$e$b;->a:Landroidx/mediarouter/media/g$e;

    iget-object p1, p1, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {p1, p3}, Landroidx/mediarouter/media/g$h;->o(Ljava/util/Collection;)V

    :cond_3
    :goto_0
    return-void
.end method
