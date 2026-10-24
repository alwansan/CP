.class public Lcom/shabakaty/downloader/op4;
.super Lcom/shabakaty/downloader/ct0;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public H:Z

.field public I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field public J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field public K:[J

.field public L:Landroid/app/Dialog;

.field public M:Lcom/shabakaty/downloader/br3;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ct0;-><init>()V

    return-void
.end method

.method public static d2(Ljava/util/List;[JI)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;[JI)I"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-wide v4, p1, v3

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/cast/MediaTrack;

    .line 4
    iget-wide v6, v6, Lcom/google/android/gms/cast/MediaTrack;->r:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return p2
.end method

.method public static e2(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/MediaTrack;

    .line 3
    iget v2, v1, Lcom/google/android/gms/cast/MediaTrack;->s:I

    if-ne v2, p1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public Z1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/op4;->I:Ljava/util/List;

    iget-object v0, p0, Lcom/shabakaty/downloader/op4;->K:[J

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/op4;->d2(Ljava/util/List;[JI)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/op4;->J:Ljava/util/List;

    iget-object v1, p0, Lcom/shabakaty/downloader/op4;->K:[J

    const/4 v2, -0x1

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/op4;->d2(Ljava/util/List;[JI)I

    move-result v0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/vn5;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/op4;->I:Ljava/util/List;

    invoke-direct {v1, v2, v3, p1}, Lcom/shabakaty/downloader/vn5;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/vn5;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/op4;->J:Ljava/util/List;

    invoke-direct {p1, v2, v3, v0}, Lcom/shabakaty/downloader/vn5;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0038

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a04ae

    .line 11
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    const v6, 0x7f0a0089

    .line 12
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    const v8, 0x7f0a0488

    .line 13
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TabHost;

    .line 14
    invoke-virtual {v8}, Landroid/widget/TabHost;->setup()V

    .line 15
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v9

    const/4 v10, 0x4

    if-nez v9, :cond_0

    .line 16
    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v5, "textTab"

    .line 18
    invoke-virtual {v8, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 19
    invoke-virtual {v5, v3}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v3

    const v9, 0x7f12007c

    invoke-virtual {v3, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 21
    invoke-virtual {v8, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 22
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_1

    .line 23
    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v7, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v3, "audioTab"

    .line 25
    invoke-virtual {v8, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 26
    invoke-virtual {v3, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v5

    const v6, 0x7f120076

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 28
    invoke-virtual {v8, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 29
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v3

    const v5, 0x7f12007b

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/shabakaty/downloader/ao5;

    invoke-direct {v5, p0, v1, p1}, Lcom/shabakaty/downloader/ao5;-><init>(Lcom/shabakaty/downloader/op4;Lcom/shabakaty/downloader/vn5;Lcom/shabakaty/downloader/vn5;)V

    .line 31
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120077

    new-instance v2, Lcom/shabakaty/downloader/nn5;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/nn5;-><init>(Lcom/shabakaty/downloader/op4;)V

    .line 32
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    iget-object p1, p0, Lcom/shabakaty/downloader/op4;->L:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 35
    iput-object v4, p0, Lcom/shabakaty/downloader/op4;->L:Landroid/app/Dialog;

    .line 36
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/op4;->L:Landroid/app/Dialog;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ct0;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/op4;->H:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/op4;->J:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/op4;->I:Ljava/util/List;

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/op4;->K:[J

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/y14;->c()Lcom/shabakaty/downloader/xw;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 7
    invoke-virtual {v1}, Lcom/shabakaty/downloader/s14;->c()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/xw;->k()Lcom/shabakaty/downloader/br3;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/op4;->M:Lcom/shabakaty/downloader/br3;

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/shabakaty/downloader/op4;->M:Lcom/shabakaty/downloader/br3;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->d()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/op4;->M:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->e()Lcom/shabakaty/downloader/dr2;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/dr2;->B:[J

    .line 13
    iput-object v1, p0, Lcom/shabakaty/downloader/op4;->K:[J

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/op4;->M:Lcom/shabakaty/downloader/br3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3;->d()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    if-nez v1, :cond_3

    .line 15
    iput-boolean v0, p0, Lcom/shabakaty/downloader/op4;->H:Z

    return-void

    .line 16
    :cond_3
    iget-object v1, v1, Lcom/google/android/gms/cast/MediaInfo;->w:Ljava/util/List;

    if-nez v1, :cond_4

    .line 17
    iput-boolean v0, p0, Lcom/shabakaty/downloader/op4;->H:Z

    return-void

    :cond_4
    const/4 v2, 0x2

    .line 18
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/op4;->e2(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/op4;->J:Ljava/util/List;

    .line 19
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/op4;->e2(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/op4;->I:Ljava/util/List;

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/op4;->I:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object v1

    const v5, 0x7f12007a

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    .line 23
    new-instance v12, Lcom/google/android/gms/cast/MediaTrack;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, ""

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    .line 24
    invoke-interface {p1, v0, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    return-void

    .line 25
    :cond_6
    :goto_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/op4;->H:Z

    return-void

    .line 26
    :cond_7
    :goto_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/op4;->H:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ct0;->C:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/shabakaty/downloader/ct0;->onDestroyView()V

    return-void
.end method
