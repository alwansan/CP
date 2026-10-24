.class public final Lcom/shabakaty/downloader/og6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/ma7;

.field public final synthetic t:Lcom/shabakaty/downloader/di6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ma7;I)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/og6;->r:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    iput-object p2, p0, Lcom/shabakaty/downloader/og6;->s:Lcom/shabakaty/downloader/ma7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    iput-object p2, p0, Lcom/shabakaty/downloader/og6;->s:Lcom/shabakaty/downloader/ma7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    iput-object p2, p0, Lcom/shabakaty/downloader/og6;->s:Lcom/shabakaty/downloader/ma7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    iput-object p2, p0, Lcom/shabakaty/downloader/og6;->s:Lcom/shabakaty/downloader/ma7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/og6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->c()V

    iget-object v0, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/og6;->s:Lcom/shabakaty/downloader/ma7;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/de6;->e()V

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->d()V

    .line 9
    iget-object v2, v1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v2, v1, Lcom/shabakaty/downloader/ma7;->M:Ljava/lang/String;

    invoke-static {v2}, Lcom/shabakaty/downloader/qg5;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v2

    .line 11
    iget-object v3, v1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/uw6;->L(Ljava/lang/String;)Lcom/shabakaty/downloader/qg5;

    move-result-object v3

    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 13
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 14
    iget-object v5, v1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    const-string v6, "Setting consent, package, consent"

    .line 15
    invoke-virtual {v4, v6, v5, v2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    iget-object v4, v1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v4, v2}, Lcom/shabakaty/downloader/uw6;->r(Ljava/lang/String;Lcom/shabakaty/downloader/qg5;)V

    .line 18
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/qg5;->i(Lcom/shabakaty/downloader/qg5;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uw6;->p(Lcom/shabakaty/downloader/ma7;)V

    :cond_0
    return-void

    .line 20
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    .line 21
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->c()V

    iget-object v0, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    .line 23
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 24
    iget-object v1, p0, Lcom/shabakaty/downloader/og6;->s:Lcom/shabakaty/downloader/ma7;

    .line 25
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/shabakaty/downloader/de6;->e()V

    .line 27
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->d()V

    .line 28
    iget-object v2, v1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uw6;->J(Lcom/shabakaty/downloader/ma7;)Lcom/shabakaty/downloader/xf6;

    return-void

    .line 30
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    .line 31
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 32
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->c()V

    iget-object v0, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    .line 33
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 34
    iget-object v1, p0, Lcom/shabakaty/downloader/og6;->s:Lcom/shabakaty/downloader/ma7;

    .line 35
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uw6;->p(Lcom/shabakaty/downloader/ma7;)V

    return-void

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    .line 37
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 38
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->c()V

    iget-object v0, p0, Lcom/shabakaty/downloader/og6;->t:Lcom/shabakaty/downloader/di6;

    .line 39
    iget-object v0, v0, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 40
    iget-object v1, p0, Lcom/shabakaty/downloader/og6;->s:Lcom/shabakaty/downloader/ma7;

    .line 41
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uw6;->j(Lcom/shabakaty/downloader/ma7;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
