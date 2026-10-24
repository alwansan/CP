.class public final Lcom/shabakaty/downloader/dq2$d;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "MediaRouteDynamicChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/dq2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/dq2$d$c;,
        Lcom/shabakaty/downloader/dq2$d$a;,
        Lcom/shabakaty/downloader/dq2$d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/dq2$d$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/view/LayoutInflater;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final synthetic g:Lcom/shabakaty/downloader/dq2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dq2;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/dq2$d;->g:Lcom/shabakaty/downloader/dq2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/dq2$d;->a:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/dq2;->t:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/dq2$d;->b:Landroid/view/LayoutInflater;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/dq2;->t:Landroid/content/Context;

    const v1, 0x7f04030a

    .line 5
    invoke-static {v0, v1}, Landroidx/mediarouter/app/h;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/dq2$d;->c:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/dq2;->t:Landroid/content/Context;

    const v1, 0x7f040313

    .line 8
    invoke-static {v0, v1}, Landroidx/mediarouter/app/h;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/dq2$d;->d:Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/dq2;->t:Landroid/content/Context;

    const v1, 0x7f040310

    .line 11
    invoke-static {v0, v1}, Landroidx/mediarouter/app/h;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/dq2$d;->e:Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/dq2;->t:Landroid/content/Context;

    const v0, 0x7f04030f

    .line 14
    invoke-static {p1, v0}, Landroidx/mediarouter/app/h;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/shabakaty/downloader/dq2$d;->f:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dq2$d;->f()V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq2$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/dq2$d;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/shabakaty/downloader/dq2$d$b;

    iget-object v2, p0, Lcom/shabakaty/downloader/dq2$d;->g:Lcom/shabakaty/downloader/dq2;

    iget-object v2, v2, Lcom/shabakaty/downloader/dq2;->t:Landroid/content/Context;

    const v3, 0x7f120191

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/dq2$d$b;-><init>(Lcom/shabakaty/downloader/dq2$d;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/dq2$d;->g:Lcom/shabakaty/downloader/dq2;

    iget-object v0, v0, Lcom/shabakaty/downloader/dq2;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/g$h;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/dq2$d;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/shabakaty/downloader/dq2$d$b;

    invoke-direct {v3, p0, v1}, Lcom/shabakaty/downloader/dq2$d$b;-><init>(Lcom/shabakaty/downloader/dq2$d;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq2$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq2$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/dq2$d$b;

    .line 2
    iget p1, p1, Lcom/shabakaty/downloader/dq2$d$b;->b:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dq2$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/dq2$d$b;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/dq2$d$b;->b:I

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/dq2$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/dq2$d$b;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const-string v2, "RecyclerAdapter"

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const-string p1, "Cannot bind item to ViewHolder because of wrong view type"

    .line 4
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/dq2$d$c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p2, Lcom/shabakaty/downloader/dq2$d$b;->a:Ljava/lang/Object;

    .line 7
    check-cast p2, Landroidx/mediarouter/media/g$h;

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/dq2$d$c;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/dq2$d$c;->c:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/dq2$d$c;->a:Landroid/view/View;

    new-instance v4, Lcom/shabakaty/downloader/eq2;

    invoke-direct {v4, p1, p2}, Lcom/shabakaty/downloader/eq2;-><init>(Lcom/shabakaty/downloader/dq2$d$c;Landroidx/mediarouter/media/g$h;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p1, Lcom/shabakaty/downloader/dq2$d$c;->d:Landroid/widget/TextView;

    .line 12
    iget-object v4, p2, Landroidx/mediarouter/media/g$h;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p1, Lcom/shabakaty/downloader/dq2$d$c;->b:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/shabakaty/downloader/dq2$d$c;->e:Lcom/shabakaty/downloader/dq2$d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v4, p2, Landroidx/mediarouter/media/g$h;->f:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 16
    :try_start_0
    iget-object v5, p1, Lcom/shabakaty/downloader/dq2$d;->g:Lcom/shabakaty/downloader/dq2;

    iget-object v5, v5, Lcom/shabakaty/downloader/dq2;->t:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    .line 17
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :cond_1
    iget v2, p2, Landroidx/mediarouter/media/g$h;->m:I

    if-eq v2, v1, :cond_4

    if-eq v2, v3, :cond_3

    .line 20
    invoke-virtual {p2}, Landroidx/mediarouter/media/g$h;->f()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 21
    iget-object p1, p1, Lcom/shabakaty/downloader/dq2$d;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/downloader/dq2$d;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 23
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/downloader/dq2$d;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 24
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/downloader/dq2$d;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v2, p1

    .line 25
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 26
    :cond_5
    check-cast p1, Lcom/shabakaty/downloader/dq2$d$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p2, p2, Lcom/shabakaty/downloader/dq2$d$b;->a:Ljava/lang/Object;

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    iget-object p1, p1, Lcom/shabakaty/downloader/dq2$d$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const-string p1, "RecyclerAdapter"

    const-string p2, "Cannot create ViewHolder because of wrong view type"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/shabakaty/downloader/dq2$d;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00c9

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/dq2$d$c;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/dq2$d$c;-><init>(Lcom/shabakaty/downloader/dq2$d;Landroid/view/View;)V

    return-object p2

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/dq2$d;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00c8

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/dq2$d$a;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/dq2$d$a;-><init>(Lcom/shabakaty/downloader/dq2$d;Landroid/view/View;)V

    return-object p2
.end method
