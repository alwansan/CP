.class public final Lcom/shabakaty/downloader/mg5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Z

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n86;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/mg5;->r:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/mg5;->s:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tf5;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/mg5;->r:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/mg5;->s:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vn6;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/mg5;->r:I

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/mg5;->s:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/mg5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/n86;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/n86;->a:Lcom/shabakaty/downloader/uw6;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->D()V

    return-void

    .line 4
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tf5;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/tf5;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/in5;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/in5;->S1()V

    return-void

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vn6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->d()Z

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/vn6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/vn6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/mg5;->s:Z

    .line 10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/d;->A:Ljava/lang/Boolean;

    .line 11
    iget-boolean v2, p0, Lcom/shabakaty/downloader/mg5;->s:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/vn6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 14
    iget-boolean v2, p0, Lcom/shabakaty/downloader/mg5;->s:Z

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Default data collection state already set to"

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/vn6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->d()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/vn6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->d()Z

    move-result v1

    iget-object v2, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/vn6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->c()Z

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/vn6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 19
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->k:Lcom/shabakaty/downloader/s66;

    .line 20
    iget-boolean v2, p0, Lcom/shabakaty/downloader/mg5;->s:Z

    .line 21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    .line 23
    invoke-virtual {v1, v3, v2, v0}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/mg5;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vn6;

    .line 24
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vn6;->D()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
