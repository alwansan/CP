.class public final Lcom/shabakaty/downloader/wt6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:J

.field public final synthetic t:Lcom/shabakaty/downloader/su6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/su6;JI)V
    .locals 1

    iput p4, p0, Lcom/shabakaty/downloader/wt6;->r:I

    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wt6;->t:Lcom/shabakaty/downloader/su6;

    iput-wide p2, p0, Lcom/shabakaty/downloader/wt6;->s:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/wt6;->t:Lcom/shabakaty/downloader/su6;

    iput-wide p2, p0, Lcom/shabakaty/downloader/wt6;->s:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/shabakaty/downloader/wt6;->r:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wt6;->t:Lcom/shabakaty/downloader/su6;

    iget-wide v1, p0, Lcom/shabakaty/downloader/wt6;->s:J

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/su6;->i()V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Activity resumed, time"

    invoke-virtual {v3, v5, v4}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 7
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 8
    invoke-virtual {v3}, Lcom/shabakaty/downloader/hg5;->w()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    .line 10
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/c;->p:Lcom/shabakaty/downloader/u86;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/u86;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, v0, Lcom/shabakaty/downloader/su6;->e:Lcom/shabakaty/downloader/nu6;

    .line 11
    iget-object v4, v3, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    .line 12
    invoke-virtual {v4}, Lcom/shabakaty/downloader/d56;->e()V

    iget-object v4, v3, Lcom/shabakaty/downloader/nu6;->c:Lcom/shabakaty/downloader/li5;

    .line 13
    invoke-virtual {v4}, Lcom/shabakaty/downloader/li5;->a()V

    iput-wide v1, v3, Lcom/shabakaty/downloader/nu6;->a:J

    iput-wide v1, v3, Lcom/shabakaty/downloader/nu6;->b:J

    .line 14
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/su6;->f:Lcom/shabakaty/downloader/yh1;

    .line 15
    iget-object v2, v1, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/su6;

    .line 16
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d56;->e()V

    iget-object v2, v1, Lcom/shabakaty/downloader/yh1;->s:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/eu6;

    if-eqz v2, :cond_2

    iget-object v3, v1, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/su6;

    .line 17
    iget-object v3, v3, Lcom/shabakaty/downloader/su6;->c:Landroid/os/Handler;

    .line 18
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v1, v1, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/su6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c;->p:Lcom/shabakaty/downloader/u86;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/u86;->a(Z)V

    .line 21
    iget-object v0, v0, Lcom/shabakaty/downloader/su6;->d:Lcom/shabakaty/downloader/qu6;

    iget-object v1, v0, Lcom/shabakaty/downloader/qu6;->a:Lcom/shabakaty/downloader/su6;

    .line 22
    invoke-virtual {v1}, Lcom/shabakaty/downloader/d56;->e()V

    iget-object v1, v0, Lcom/shabakaty/downloader/qu6;->a:Lcom/shabakaty/downloader/su6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->d()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/shabakaty/downloader/qu6;->a:Lcom/shabakaty/downloader/su6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 24
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 25
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 27
    invoke-virtual {v0, v3, v4, v2}, Lcom/shabakaty/downloader/qu6;->b(JZ)V

    :goto_0
    return-void

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt6;->t:Lcom/shabakaty/downloader/su6;

    iget-wide v5, p0, Lcom/shabakaty/downloader/wt6;->s:J

    .line 29
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 30
    invoke-virtual {v0}, Lcom/shabakaty/downloader/su6;->i()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 32
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    .line 33
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Activity paused, time"

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/shabakaty/downloader/su6;->f:Lcom/shabakaty/downloader/yh1;

    .line 34
    new-instance v8, Lcom/shabakaty/downloader/eu6;

    iget-object v1, v7, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/su6;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 35
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 36
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, v8

    move-object v2, v7

    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/eu6;-><init>(Lcom/shabakaty/downloader/yh1;JJ)V

    iput-object v8, v7, Lcom/shabakaty/downloader/yh1;->s:Ljava/lang/Object;

    iget-object v1, v7, Lcom/shabakaty/downloader/yh1;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/su6;

    .line 39
    iget-object v1, v1, Lcom/shabakaty/downloader/su6;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    .line 40
    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 42
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 43
    invoke-virtual {v1}, Lcom/shabakaty/downloader/hg5;->w()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/shabakaty/downloader/su6;->e:Lcom/shabakaty/downloader/nu6;

    .line 44
    iget-object v0, v0, Lcom/shabakaty/downloader/nu6;->c:Lcom/shabakaty/downloader/li5;

    .line 45
    invoke-virtual {v0}, Lcom/shabakaty/downloader/li5;->a()V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
