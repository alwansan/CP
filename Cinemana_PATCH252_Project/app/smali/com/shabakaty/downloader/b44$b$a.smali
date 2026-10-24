.class public final Lcom/shabakaty/downloader/b44$b$a;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/b44$b;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ue1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ue1;

.field public final synthetic s:Lcom/shabakaty/downloader/b44$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/b44$b;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/b44$b$a;->r:Lcom/shabakaty/downloader/ue1;

    iput-object p2, p0, Lcom/shabakaty/downloader/b44$b$a;->s:Lcom/shabakaty/downloader/b44$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/shabakaty/downloader/b44$b$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/shabakaty/downloader/b44$b$a$a;

    iget v1, v0, Lcom/shabakaty/downloader/b44$b$a$a;->v:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/b44$b$a$a;->v:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/b44$b$a$a;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/b44$b$a$a;-><init>(Lcom/shabakaty/downloader/b44$b$a;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p2, v0, Lcom/shabakaty/downloader/b44$b$a$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    iget v2, v0, Lcom/shabakaty/downloader/b44$b$a$a;->v:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    .line 1
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/shabakaty/downloader/b44$b$a$a;->w:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ue1;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_3
    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/b44$b$a;->r:Lcom/shabakaty/downloader/ue1;

    .line 4
    check-cast p1, Ljava/util/List;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/b44$b$a;->s:Lcom/shabakaty/downloader/b44$b;

    iget-object v6, v2, Lcom/shabakaty/downloader/b44$b;->s:Lcom/shabakaty/downloader/n34;

    iget-object v2, v2, Lcom/shabakaty/downloader/b44$b;->t:Lcom/shabakaty/downloader/rm1;

    invoke-interface {v2}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object p2, v0, Lcom/shabakaty/downloader/b44$b$a$a;->w:Ljava/lang/Object;

    iput v5, v0, Lcom/shabakaty/downloader/b44$b$a$a;->v:I

    .line 6
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    .line 8
    iget-object v7, v7, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;->userId:Ljava/lang/String;

    .line 9
    invoke-static {v7, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_5
    move-object v5, v3

    :goto_1
    check-cast v5, Lcom/shabakaty/cinemana/data/db/settings/SettingsEntity;

    if-nez v5, :cond_6

    invoke-virtual {v6, v0}, Lcom/shabakaty/downloader/n34;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, v5

    :goto_2
    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    .line 10
    :goto_3
    iput-object v3, v0, Lcom/shabakaty/downloader/b44$b$a$a;->w:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/b44$b$a$a;->v:I

    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/ue1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
