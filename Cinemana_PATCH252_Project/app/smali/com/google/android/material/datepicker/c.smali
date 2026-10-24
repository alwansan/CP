.class public final Lcom/google/android/material/datepicker/c;
.super Lcom/shabakaty/downloader/hc3;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/c$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/hc3<",
        "TS;>;"
    }
.end annotation


# static fields
.field public static final synthetic C:I


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/view/View;

.field public s:I

.field public t:Lcom/shabakaty/downloader/fm0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/fm0<",
            "TS;>;"
        }
    .end annotation
.end field

.field public u:Lcom/google/android/material/datepicker/a;

.field public v:Lcom/shabakaty/downloader/tu2;

.field public w:I

.field public x:Lcom/shabakaty/downloader/lq;

.field public y:Landroidx/recyclerview/widget/RecyclerView;

.field public z:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/hc3;-><init>()V

    return-void
.end method


# virtual methods
.method public X1(Lcom/shabakaty/downloader/u63;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/u63<",
            "TS;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hc3;->r:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public Y1()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public final Z1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/c$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/c$a;-><init>(Lcom/google/android/material/datepicker/c;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a2(Lcom/shabakaty/downloader/tu2;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/h;

    .line 2
    iget-object v1, v0, Lcom/google/android/material/datepicker/h;->b:Lcom/google/android/material/datepicker/a;

    .line 3
    iget-object v1, v1, Lcom/google/android/material/datepicker/a;->r:Lcom/shabakaty/downloader/tu2;

    .line 4
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/tu2;->F(Lcom/shabakaty/downloader/tu2;)I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/google/android/material/datepicker/c;->v:Lcom/shabakaty/downloader/tu2;

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/h;->g(Lcom/shabakaty/downloader/tu2;)I

    move-result v0

    sub-int v0, v1, v0

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->v:Lcom/shabakaty/downloader/tu2;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->q0(I)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/c;->Z1(I)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 10
    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->q0(I)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/c;->Z1(I)V

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/c;->Z1(I)V

    :goto_2
    return-void
.end method

.method public b2(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/datepicker/c;->w:I

    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/j95;

    iget-object v3, p0, Lcom/google/android/material/datepicker/c;->v:Lcom/shabakaty/downloader/tu2;

    iget v3, v3, Lcom/shabakaty/downloader/tu2;->t:I

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/j95;->f(I)I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->M0(I)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->A:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->B:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->A:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->B:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/google/android/material/datepicker/c;->v:Lcom/shabakaty/downloader/tu2;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/c;->a2(Lcom/shabakaty/downloader/tu2;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/c;->s:I

    const-string v0, "GRID_SELECTOR_KEY"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fm0;

    iput-object v0, p0, Lcom/google/android/material/datepicker/c;->t:Lcom/shabakaty/downloader/fm0;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/a;

    iput-object v0, p0, Lcom/google/android/material/datepicker/c;->u:Lcom/google/android/material/datepicker/a;

    const-string v0, "CURRENT_MONTH_KEY"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/tu2;

    iput-object p1, p0, Lcom/google/android/material/datepicker/c;->v:Lcom/shabakaty/downloader/tu2;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/c;->s:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/lq;

    invoke-direct {v0, p3}, Lcom/shabakaty/downloader/lq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/c;->x:Lcom/shabakaty/downloader/lq;

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->u:Lcom/google/android/material/datepicker/a;

    .line 5
    iget-object v0, v0, Lcom/google/android/material/datepicker/a;->r:Lcom/shabakaty/downloader/tu2;

    .line 6
    invoke-static {p3}, Lcom/google/android/material/datepicker/e;->e2(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const v1, 0x7f0d00da

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f0d00d5

    const/4 v9, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a02e5

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    .line 9
    new-instance v1, Lcom/google/android/material/datepicker/c$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/c$b;-><init>(Lcom/google/android/material/datepicker/c;)V

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/c35;->u(Landroid/view/View;Lcom/shabakaty/downloader/d2;)V

    .line 10
    new-instance v1, Lcom/shabakaty/downloader/im0;

    invoke-direct {v1}, Lcom/shabakaty/downloader/im0;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    iget v0, v0, Lcom/shabakaty/downloader/tu2;->u:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 12
    invoke-virtual {p2, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    const p2, 0x7f0a02e8

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    new-instance p2, Lcom/google/android/material/datepicker/c$c;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p0

    move v7, v9

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/datepicker/c$c;-><init>(Lcom/google/android/material/datepicker/c;Landroid/content/Context;IZI)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 17
    iget-object p2, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 18
    new-instance p2, Lcom/google/android/material/datepicker/h;

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->t:Lcom/shabakaty/downloader/fm0;

    iget-object v1, p0, Lcom/google/android/material/datepicker/c;->u:Lcom/google/android/material/datepicker/a;

    new-instance v4, Lcom/google/android/material/datepicker/c$d;

    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/c$d;-><init>(Lcom/google/android/material/datepicker/c;)V

    invoke-direct {p2, p3, v0, v1, v4}, Lcom/google/android/material/datepicker/h;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/fm0;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/c$e;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 20
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x7f0a02eb

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lcom/google/android/material/datepicker/c;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_1

    .line 22
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 23
    iget-object v4, p0, Lcom/google/android/material/datepicker/c;->y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, p3, v0, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/shabakaty/downloader/j95;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/j95;-><init>(Lcom/google/android/material/datepicker/c;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    new-instance v2, Lcom/shabakaty/downloader/gn2;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/gn2;-><init>(Lcom/google/android/material/datepicker/c;)V

    .line 27
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_1
    const v0, 0x7f0a02a6

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v2, "SELECTOR_TOGGLE_TAG"

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 31
    new-instance v2, Lcom/shabakaty/downloader/hn2;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/hn2;-><init>(Lcom/google/android/material/datepicker/c;)V

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/c35;->u(Landroid/view/View;Lcom/shabakaty/downloader/d2;)V

    const v2, 0x7f0a02a8

    .line 32
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    const-string v4, "NAVIGATION_PREV_TAG"

    .line 33
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v4, 0x7f0a02a7

    .line 34
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    const-string v5, "NAVIGATION_NEXT_TAG"

    .line 35
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/c;->A:Landroid/view/View;

    const v1, 0x7f0a02e4

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/c;->B:Landroid/view/View;

    .line 38
    invoke-virtual {p0, v3}, Lcom/google/android/material/datepicker/c;->b2(I)V

    .line 39
    iget-object v1, p0, Lcom/google/android/material/datepicker/c;->v:Lcom/shabakaty/downloader/tu2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/tu2;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/shabakaty/downloader/in2;

    invoke-direct {v3, p0, p2, v0}, Lcom/shabakaty/downloader/in2;-><init>(Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/h;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 41
    new-instance v1, Lcom/shabakaty/downloader/jn2;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/jn2;-><init>(Lcom/google/android/material/datepicker/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance v0, Lcom/shabakaty/downloader/kn2;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/kn2;-><init>(Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/h;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v0, Lcom/shabakaty/downloader/ln2;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/ln2;-><init>(Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/h;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_2
    invoke-static {p3}, Lcom/google/android/material/datepicker/e;->e2(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 45
    new-instance p3, Landroidx/recyclerview/widget/y;

    invoke-direct {p3}, Landroidx/recyclerview/widget/y;-><init>()V

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/e0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 46
    :cond_3
    iget-object p3, p0, Lcom/google/android/material/datepicker/c;->z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->v:Lcom/shabakaty/downloader/tu2;

    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/h;->g(Lcom/shabakaty/downloader/tu2;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->q0(I)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, Lcom/google/android/material/datepicker/c;->s:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->t:Lcom/shabakaty/downloader/fm0;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->u:Lcom/google/android/material/datepicker/a;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/datepicker/c;->v:Lcom/shabakaty/downloader/tu2;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
