.class public final Lcom/shabakaty/downloader/vn6;
.super Lcom/shabakaty/downloader/ka6;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"


# instance fields
.field public c:Lcom/shabakaty/downloader/rn6;

.field public d:Lcom/shabakaty/downloader/qz2;

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/oj6;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;

.field public i:Lcom/shabakaty/downloader/qg5;

.field public j:I

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public l:J

.field public m:I

.field public final n:Lcom/shabakaty/downloader/id7;

.field public o:Z

.field public final p:Lcom/shabakaty/downloader/xy6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/d;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ka6;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vn6;->e:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vn6;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/downloader/vn6;->o:Z

    new-instance v0, Lcom/shabakaty/downloader/mc6;

    .line 3
    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/mc6;-><init>(Lcom/shabakaty/downloader/vn6;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vn6;->p:Lcom/shabakaty/downloader/xy6;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/vn6;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/shabakaty/downloader/qg5;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1, v1}, Lcom/shabakaty/downloader/qg5;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vn6;->i:Lcom/shabakaty/downloader/qg5;

    const/16 v0, 0x64

    iput v0, p0, Lcom/shabakaty/downloader/vn6;->j:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/shabakaty/downloader/vn6;->l:J

    iput v0, p0, Lcom/shabakaty/downloader/vn6;->m:I

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vn6;->k:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/shabakaty/downloader/id7;

    .line 7
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/id7;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/vn6;->n:Lcom/shabakaty/downloader/id7;

    return-void
.end method

.method public static F(Lcom/shabakaty/downloader/vn6;Lcom/shabakaty/downloader/qg5;IJZZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka6;->f()V

    iget-wide v0, p0, Lcom/shabakaty/downloader/vn6;->l:J

    cmp-long v2, p3, v0

    if-gtz v2, :cond_1

    iget v0, p0, Lcom/shabakaty/downloader/vn6;->m:I

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/qg5;->h(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/b;->l:Lcom/shabakaty/downloader/s66;

    const-string p2, "Dropped out-of-date consent setting, proposed settings"

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/c;->u(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qg5;->e()Ljava/lang/String;

    move-result-object p1

    const-string v1, "consent_settings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "consent_source"

    .line 12
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p3, p0, Lcom/shabakaty/downloader/vn6;->l:J

    iput p2, p0, Lcom/shabakaty/downloader/vn6;->m:I

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/downloader/d56;->e()V

    .line 16
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka6;->f()V

    if-eqz p5, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zs6;->u()Z

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/shabakaty/downloader/z56;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/shabakaty/downloader/z56;->j()V

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zs6;->o()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/zs6;->q(Z)Lcom/shabakaty/downloader/ma7;

    move-result-object p2

    new-instance p3, Lcom/shabakaty/downloader/kq6;

    const/4 p4, 0x3

    .line 22
    invoke-direct {p3, p1, p2, p4}, Lcom/shabakaty/downloader/kq6;-><init>(Lcom/shabakaty/downloader/zs6;Lcom/shabakaty/downloader/ma7;I)V

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/zs6;->t(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz p6, :cond_4

    .line 23
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/zs6;->y(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_4
    return-void

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p0

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/b;->l:Lcom/shabakaty/downloader/s66;

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Lower precedence consent source ignored, proposed source"

    invoke-virtual {p0, p2, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    if-nez p1, :cond_0

    const-string v1, "app"

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    const/4 v3, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x18

    if-eqz p4, :cond_1

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    .line 2
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/f;->k0(Ljava/lang/String;)I

    move-result v3

    move v11, v3

    goto :goto_2

    .line 3
    :cond_1
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v7

    const-string v8, "user property"

    .line 5
    invoke-virtual {v7, v8, v2}, Lcom/google/android/gms/measurement/internal/f;->P(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    const/4 v11, 0x6

    goto :goto_2

    .line 6
    :cond_2
    sget-object v9, Lcom/shabakaty/downloader/gj6;->a:[Ljava/lang/String;

    const/4 v10, 0x0

    .line 7
    invoke-virtual {v7, v8, v9, v10, v2}, Lcom/google/android/gms/measurement/internal/f;->L(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v3, 0xf

    const/16 v11, 0xf

    goto :goto_2

    :cond_3
    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v7, v8, v5, v2}, Lcom/google/android/gms/measurement/internal/f;->K(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_2
    const/4 v3, 0x1

    if-eqz v11, :cond_6

    .line 10
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, v2, v5, v3}, Lcom/google/android/gms/measurement/internal/f;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move v14, v4

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v8

    iget-object v9, v6, Lcom/shabakaty/downloader/vn6;->p:Lcom/shabakaty/downloader/xy6;

    const/4 v10, 0x0

    const-string v12, "_ev"

    .line 16
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    if-eqz v0, :cond_b

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v7

    .line 18
    invoke-virtual {v7, v2, v0}, Lcom/google/android/gms/measurement/internal/f;->g0(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v11

    if-eqz v11, :cond_9

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 20
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/measurement/internal/f;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    .line 22
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 23
    :cond_8
    :goto_4
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v14, v4

    :goto_5
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v8

    iget-object v9, v6, Lcom/shabakaty/downloader/vn6;->p:Lcom/shabakaty/downloader/xy6;

    const/4 v10, 0x0

    const-string v12, "_ev"

    .line 26
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_9
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/measurement/internal/f;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/vn6;->t(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/vn6;->t(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka6;->f()V

    const-string v0, "allow_personalized_ads"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "_npa"

    if-eqz v0, :cond_3

    .line 6
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "false"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v3, 0x1

    if-eq v1, p2, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c;->l:Lcom/shabakaty/downloader/s96;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    const-string p3, "true"

    :cond_1
    invoke-virtual {v0, p3}, Lcom/shabakaty/downloader/s96;->b(Ljava/lang/String;)V

    move-object v7, p2

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/c;->l:Lcom/shabakaty/downloader/s96;

    const-string v0, "unset"

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/s96;->b(Ljava/lang/String;)V

    move-object v7, p3

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object v4, p2

    move-object v7, p3

    .line 13
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->d()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p1

    .line 16
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string p2, "User property not set since app measurement is disabled"

    .line 17
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->f()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 19
    :cond_5
    new-instance p2, Lcom/shabakaty/downloader/qy6;

    move-object v3, p2

    move-wide v5, p4

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/qy6;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/shabakaty/downloader/d56;->e()V

    .line 22
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka6;->f()V

    .line 23
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zs6;->u()Z

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/shabakaty/downloader/z56;

    move-result-object p3

    .line 25
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p4

    const/4 p5, 0x0

    .line 27
    invoke-static {p2, p4, p5}, Lcom/shabakaty/downloader/sy6;->a(Lcom/shabakaty/downloader/qy6;Landroid/os/Parcel;I)V

    .line 28
    invoke-virtual {p4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 29
    invoke-virtual {p4}, Landroid/os/Parcel;->recycle()V

    .line 30
    array-length p4, v0

    const/high16 v2, 0x20000

    if-le p4, v2, :cond_6

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 31
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p3

    .line 32
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/b;->g:Lcom/shabakaty/downloader/s66;

    const-string p4, "User property too long for local database. Sending directly to service"

    .line 33
    invoke-virtual {p3, p4}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 34
    :cond_6
    invoke-virtual {p3, v1, v0}, Lcom/shabakaty/downloader/z56;->o(I[B)Z

    move-result p5

    .line 35
    :goto_3
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/zs6;->q(Z)Lcom/shabakaty/downloader/ma7;

    move-result-object p3

    new-instance p4, Lcom/shabakaty/downloader/hq6;

    .line 36
    invoke-direct {p4, p1, p3, p5, p2}, Lcom/shabakaty/downloader/hq6;-><init>(Lcom/shabakaty/downloader/zs6;Lcom/shabakaty/downloader/ma7;ZLcom/shabakaty/downloader/qy6;)V

    invoke-virtual {p1, p4}, Lcom/shabakaty/downloader/zs6;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final C(Ljava/lang/Boolean;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka6;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v1, "Setting app measurement enabled (FE)"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c;->r(Ljava/lang/Boolean;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->e()V

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c;->o()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "measurement_enabled_from_api"

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    iget-boolean p2, p2, Lcom/google/android/gms/measurement/internal/d;->D:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vn6;->D()V

    return-void
.end method

.method public final D()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d56;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c;->l:Lcom/shabakaty/downloader/s96;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/s96;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v2, "unset"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v4, "app"

    const-string v5, "_npa"

    move-object v3, p0

    .line 8
    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/vn6;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_1

    :cond_0
    const-string v2, "true"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v1, v0, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 11
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v5, "app"

    const-string v6, "_npa"

    move-object v4, p0

    .line 13
    invoke-virtual/range {v4 .. v9}, Lcom/shabakaty/downloader/vn6;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 14
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/shabakaty/downloader/vn6;->o:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v2, "Recording app launch after enabling measurement for the first time (FE)"

    .line 18
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vn6;->G()V

    .line 20
    invoke-static {}, Lcom/shabakaty/downloader/y87;->c()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 21
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    const/4 v2, 0x0

    .line 22
    sget-object v3, Lcom/shabakaty/downloader/d46;->j0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->A()Lcom/shabakaty/downloader/su6;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/shabakaty/downloader/su6;->d:Lcom/shabakaty/downloader/qu6;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qu6;->a()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v2, Lcom/shabakaty/downloader/vj6;

    .line 26
    invoke-direct {v2, p0, v1}, Lcom/shabakaty/downloader/vj6;-><init>(Lcom/shabakaty/downloader/vn6;I)V

    .line 27
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v2, "Updating Scion state (FE)"

    .line 30
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 33
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka6;->f()V

    .line 34
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zs6;->q(Z)Lcom/shabakaty/downloader/ma7;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/kq6;

    const/4 v3, 0x2

    .line 35
    invoke-direct {v2, v0, v1, v3}, Lcom/shabakaty/downloader/kq6;-><init>(Lcom/shabakaty/downloader/zs6;Lcom/shabakaty/downloader/ma7;I)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/zs6;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/vn6;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final G()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka6;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/d46;->Z:Lcom/shabakaty/downloader/z36;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 7
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "google_analytics_deferred_deep_link_enabled"

    .line 9
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/hg5;->t(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v3, "Deferred Deep Link feature enabled."

    .line 13
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/downloader/vj6;

    .line 15
    invoke-direct {v3, p0, v1}, Lcom/shabakaty/downloader/vj6;-><init>(Lcom/shabakaty/downloader/vn6;I)V

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka6;->f()V

    const/4 v3, 0x1

    .line 19
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/zs6;->q(Z)Lcom/shabakaty/downloader/ma7;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/shabakaty/downloader/z56;

    move-result-object v5

    new-array v6, v1, [B

    const/4 v7, 0x3

    .line 21
    invoke-virtual {v5, v7, v6}, Lcom/shabakaty/downloader/z56;->o(I[B)Z

    .line 22
    new-instance v5, Lcom/shabakaty/downloader/kq6;

    .line 23
    invoke-direct {v5, v0, v4, v3}, Lcom/shabakaty/downloader/kq6;-><init>(Lcom/shabakaty/downloader/zs6;Lcom/shabakaty/downloader/ma7;I)V

    invoke-virtual {v0, v5}, Lcom/shabakaty/downloader/zs6;->t(Ljava/lang/Runnable;)V

    .line 24
    iput-boolean v1, p0, Lcom/shabakaty/downloader/vn6;->o:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "previous_os_version"

    .line 27
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->q()Lcom/shabakaty/downloader/ti5;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/shabakaty/downloader/mi6;->h()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->q()Lcom/shabakaty/downloader/ti5;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mi6;->h()V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    .line 38
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v2, "_ou"

    .line 40
    invoke-virtual {p0, v1, v2, v0}, Lcom/shabakaty/downloader/vn6;->o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "name"

    .line 6
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    .line 7
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string p1, "expired_event_name"

    .line 8
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    .line 9
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/downloader/zj6;

    const/4 p3, 0x2

    .line 11
    invoke-direct {p2, p0, v2, p3}, Lcom/shabakaty/downloader/zj6;-><init>(Lcom/shabakaty/downloader/vn6;Landroid/os/Bundle;I)V

    .line 12
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/vn6;->c:Lcom/shabakaty/downloader/rn6;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/shabakaty/downloader/vn6;->c:Lcom/shabakaty/downloader/rn6;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 4
    invoke-virtual/range {v1 .. v8}, Lcom/shabakaty/downloader/vn6;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 20

    move-object/from16 v11, p0

    if-nez p1, :cond_0

    const-string v0, "app"

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    if-nez p3, :cond_1

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p3

    :goto_1
    const-string v1, "screen_view"

    move-object/from16 v3, p2

    .line 2
    invoke-static {v3, v1}, Lcom/google/android/gms/measurement/internal/f;->Y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_d

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v1

    .line 4
    iget-object v5, v1, Lcom/shabakaty/downloader/aq6;->l:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v2, v1, Lcom/shabakaty/downloader/aq6;->k:Z

    if-nez v2, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->k:Lcom/shabakaty/downloader/s66;

    const-string v1, "Cannot log screen view event when the app is in the background."

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 8
    monitor-exit v5

    goto/16 :goto_7

    :cond_2
    const-string v2, "screen_name"

    .line 9
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x64

    if-eqz v13, :cond_4

    .line 10
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 11
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 12
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-le v3, v2, :cond_4

    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->k:Lcom/shabakaty/downloader/s66;

    const-string v1, "Invalid screen name length for screen view. Length"

    .line 15
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    monitor-exit v5

    goto/16 :goto_7

    :cond_4
    const-string v3, "screen_class"

    .line 17
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 19
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 20
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-le v6, v2, :cond_6

    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->k:Lcom/shabakaty/downloader/s66;

    const-string v1, "Invalid screen class length for screen view. Length"

    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    monitor-exit v5

    goto/16 :goto_7

    :cond_6
    if-nez v3, :cond_8

    iget-object v2, v1, Lcom/shabakaty/downloader/aq6;->g:Landroid/app/Activity;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Activity"

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/aq6;->p(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const-string v2, "Activity"

    :goto_2
    move-object v14, v2

    goto :goto_3

    :cond_8
    move-object v14, v3

    :goto_3
    iget-object v2, v1, Lcom/shabakaty/downloader/aq6;->c:Lcom/shabakaty/downloader/jp6;

    iget-boolean v3, v1, Lcom/shabakaty/downloader/aq6;->h:Z

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    iput-boolean v4, v1, Lcom/shabakaty/downloader/aq6;->h:Z

    iget-object v3, v2, Lcom/shabakaty/downloader/jp6;->b:Ljava/lang/String;

    .line 26
    invoke-static {v3, v14}, Lcom/google/android/gms/measurement/internal/f;->Y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v2, v2, Lcom/shabakaty/downloader/jp6;->a:Ljava/lang/String;

    .line 27
    invoke-static {v2, v13}, Lcom/google/android/gms/measurement/internal/f;->Y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->k:Lcom/shabakaty/downloader/s66;

    const-string v1, "Ignoring call to log screen view event with duplicate parameters."

    .line 30
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 31
    monitor-exit v5

    goto :goto_7

    .line 32
    :cond_9
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 34
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    if-nez v13, :cond_a

    const-string v3, "null"

    goto :goto_4

    :cond_a
    move-object v3, v13

    :goto_4
    if-nez v14, :cond_b

    const-string v4, "null"

    goto :goto_5

    :cond_b
    move-object v4, v14

    :goto_5
    const-string v5, "Logging screen view with name, class"

    .line 35
    invoke-virtual {v2, v5, v3, v4}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/shabakaty/downloader/aq6;->c:Lcom/shabakaty/downloader/jp6;

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/shabakaty/downloader/aq6;->d:Lcom/shabakaty/downloader/jp6;

    goto :goto_6

    .line 36
    :cond_c
    iget-object v2, v1, Lcom/shabakaty/downloader/aq6;->c:Lcom/shabakaty/downloader/jp6;

    .line 37
    :goto_6
    new-instance v3, Lcom/shabakaty/downloader/jp6;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f;->n0()J

    move-result-wide v15

    const/16 v17, 0x1

    move-object v12, v3

    move-wide/from16 v18, p6

    invoke-direct/range {v12 .. v19}, Lcom/shabakaty/downloader/jp6;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    iput-object v3, v1, Lcom/shabakaty/downloader/aq6;->c:Lcom/shabakaty/downloader/jp6;

    iput-object v2, v1, Lcom/shabakaty/downloader/aq6;->d:Lcom/shabakaty/downloader/jp6;

    iput-object v3, v1, Lcom/shabakaty/downloader/aq6;->i:Lcom/shabakaty/downloader/jp6;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 40
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 41
    check-cast v4, Lcom/shabakaty/downloader/mn0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 43
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 44
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v6

    new-instance v7, Lcom/shabakaty/downloader/zh6;

    move-object/from16 p1, v7

    move-object/from16 p2, v1

    move-object/from16 p3, v0

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    move-wide/from16 p6, v4

    .line 45
    invoke-direct/range {p1 .. p7}, Lcom/shabakaty/downloader/zh6;-><init>(Lcom/shabakaty/downloader/aq6;Landroid/os/Bundle;Lcom/shabakaty/downloader/jp6;Lcom/shabakaty/downloader/jp6;J)V

    .line 46
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    :goto_7
    return-void

    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_d
    const/4 v1, 0x1

    if-eqz p5, :cond_f

    .line 48
    iget-object v5, v11, Lcom/shabakaty/downloader/vn6;->d:Lcom/shabakaty/downloader/qz2;

    if-eqz v5, :cond_f

    .line 49
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/f;->U(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v8, 0x1

    :goto_9
    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-wide/from16 v4, p6

    move-object v6, v0

    move/from16 v7, p5

    move/from16 v9, p4

    .line 50
    invoke-virtual/range {v1 .. v10}, Lcom/shabakaty/downloader/vn6;->s(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d56;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/vn6;->p(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d56;->e()V

    move-object v10, p0

    iget-object v0, v10, Lcom/shabakaty/downloader/vn6;->d:Lcom/shabakaty/downloader/qz2;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/f;->U(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    .line 3
    invoke-virtual/range {v0 .. v9}, Lcom/shabakaty/downloader/vn6;->q(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    const-string v13, "null reference"

    .line 2
    invoke-static {v12, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ka6;->f()V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->d()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->r()Lcom/google/android/gms/measurement/internal/a;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/a;->i:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v1, "Dropping non-safelisted event. event name, origin"

    .line 12
    invoke-virtual {v0, v1, v9, v8}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_1
    :goto_0
    iget-boolean v1, v7, Lcom/shabakaty/downloader/vn6;->f:Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_3

    iput-boolean v15, v7, Lcom/shabakaty/downloader/vn6;->f:Z

    :try_start_0
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/d;->e:Z

    if-nez v2, :cond_2

    .line 15
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v15, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    new-array v1, v15, [Ljava/lang/Class;

    .line 18
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v5

    const-string v2, "initialize"

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v15, [Ljava/lang/Object;

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 20
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    aput-object v2, v1, v5

    .line 21
    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 24
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 26
    :catch_1
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->l:Lcom/shabakaty/downloader/s66;

    const-string v1, "Tag Manager is not found and thus will not be used"

    .line 29
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v0, "_cmp"

    .line 30
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    .line 31
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 32
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 34
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 35
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-string v2, "auto"

    const-string v3, "_lgclid"

    move-object/from16 v1, p0

    const/4 v14, 0x0

    move-wide/from16 v5, v16

    .line 37
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/vn6;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 38
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_5

    .line 39
    sget-object v0, Lcom/google/android/gms/measurement/internal/f;->h:[Ljava/lang/String;

    aget-object v0, v0, v14

    .line 40
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v15

    if-eqz v0, :cond_5

    .line 41
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    .line 44
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c;->v:Lcom/shabakaty/downloader/z86;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/z86;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/measurement/internal/f;->x(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    const/16 v0, 0x28

    if-nez p8, :cond_a

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 45
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_iap"

    .line 46
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/measurement/internal/f;->P(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x2

    if-nez v3, :cond_6

    goto :goto_4

    .line 48
    :cond_6
    sget-object v3, Lcom/shabakaty/downloader/yi6;->a:[Ljava/lang/String;

    sget-object v4, Lcom/shabakaty/downloader/yi6;->b:[Ljava/lang/String;

    .line 49
    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/google/android/gms/measurement/internal/f;->L(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v5, 0xd

    goto :goto_4

    :cond_7
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 50
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v1, v2, v0, v9}, Lcom/google/android/gms/measurement/internal/f;->K(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_a

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 53
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->h:Lcom/shabakaty/downloader/s66;

    .line 54
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v2

    .line 56
    invoke-virtual {v2, v9}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid public event name. Event will not be logged (FE)"

    .line 57
    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 59
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v9, v0, v15}, Lcom/google/android/gms/measurement/internal/f;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_9

    .line 60
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    move v14, v1

    :cond_9
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    iget-object v2, v7, Lcom/shabakaty/downloader/vn6;->p:Lcom/shabakaty/downloader/xy6;

    const/4 v3, 0x0

    const-string v4, "_ev"

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v5

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move/from16 p7, v14

    .line 62
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 63
    :cond_a
    sget-object v1, Lcom/shabakaty/downloader/zb7;->s:Lcom/shabakaty/downloader/zb7;

    .line 64
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zb7;->b()Lcom/shabakaty/downloader/ac7;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/ac7;->a()Z

    .line 65
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 66
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 67
    sget-object v2, Lcom/shabakaty/downloader/d46;->v0:Lcom/shabakaty/downloader/z36;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v1

    const-string v2, "_sc"

    if-eqz v1, :cond_d

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 68
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v14}, Lcom/shabakaty/downloader/aq6;->o(Z)Lcom/shabakaty/downloader/jp6;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 71
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iput-boolean v15, v1, Lcom/shabakaty/downloader/jp6;->d:Z

    :cond_b
    if-eqz p6, :cond_c

    if-nez p8, :cond_c

    const/4 v5, 0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    .line 72
    :goto_5
    invoke-static {v1, v12, v5}, Lcom/google/android/gms/measurement/internal/f;->w(Lcom/shabakaty/downloader/jp6;Landroid/os/Bundle;Z)V

    goto :goto_7

    .line 73
    :cond_d
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 74
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v14}, Lcom/shabakaty/downloader/aq6;->o(Z)Lcom/shabakaty/downloader/jp6;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 77
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    iput-boolean v15, v1, Lcom/shabakaty/downloader/jp6;->d:Z

    :cond_e
    if-eqz p6, :cond_f

    if-nez p8, :cond_f

    const/4 v5, 0x1

    goto :goto_6

    :cond_f
    const/4 v5, 0x0

    .line 78
    :goto_6
    invoke-static {v1, v12, v5}, Lcom/google/android/gms/measurement/internal/f;->w(Lcom/shabakaty/downloader/jp6;Landroid/os/Bundle;Z)V

    :goto_7
    const-string v1, "am"

    .line 79
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 80
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/f;->U(Ljava/lang/String;)Z

    move-result v3

    if-eqz p6, :cond_12

    iget-object v4, v7, Lcom/shabakaty/downloader/vn6;->d:Lcom/shabakaty/downloader/qz2;

    if-eqz v4, :cond_12

    if-nez v3, :cond_12

    if-eqz v1, :cond_10

    const/16 v16, 0x1

    goto :goto_9

    .line 81
    :cond_10
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 83
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    .line 84
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v9}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v12}, Lcom/shabakaty/downloader/e66;->p(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    .line 89
    invoke-virtual {v0, v3, v1, v2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/shabakaty/downloader/vn6;->d:Lcom/shabakaty/downloader/qz2;

    .line 90
    invoke-static {v0, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v13, v7, Lcom/shabakaty/downloader/vn6;->d:Lcom/shabakaty/downloader/qz2;

    .line 92
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :try_start_3
    iget-object v0, v13, Lcom/shabakaty/downloader/qz2;->s:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/xv5;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    .line 94
    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/downloader/xv5;->D(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    iget-object v1, v13, Lcom/shabakaty/downloader/qz2;->t:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/d;

    if-eqz v1, :cond_11

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 96
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v2, "Event interceptor threw exception"

    .line 97
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    :goto_8
    return-void

    :cond_12
    move/from16 v16, v1

    .line 98
    :goto_9
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->f()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    .line 101
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/f;->h0(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 102
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 103
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->h:Lcom/shabakaty/downloader/s66;

    .line 104
    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 105
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v3

    .line 106
    invoke-virtual {v3, v9}, Lcom/shabakaty/downloader/e66;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event name. Event will not be logged (FE)"

    .line 107
    invoke-virtual {v2, v4, v3}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 108
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 109
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {v2, v9, v0, v15}, Lcom/google/android/gms/measurement/internal/f;->q(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_13

    .line 111
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move v14, v5

    :cond_13
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    iget-object v3, v7, Lcom/shabakaty/downloader/vn6;->p:Lcom/shabakaty/downloader/xy6;

    const-string v4, "_ev"

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, p9

    move/from16 p4, v1

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move/from16 p7, v14

    .line 113
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/f;->z(Lcom/shabakaty/downloader/xy6;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_14
    const-string v0, "_o"

    const-string v1, "_sn"

    const-string v3, "_si"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 115
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 116
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    move-object/from16 v2, p9

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v6, p8

    .line 117
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/f;->r0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v12

    .line 118
    invoke-static {v12, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 120
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v14}, Lcom/shabakaty/downloader/aq6;->o(Z)Lcom/shabakaty/downloader/jp6;

    move-result-object v1

    const-wide/16 v5, 0x0

    const-string v13, "_ae"

    if-eqz v1, :cond_15

    .line 123
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 124
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->A()Lcom/shabakaty/downloader/su6;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/downloader/su6;->e:Lcom/shabakaty/downloader/nu6;

    iget-object v2, v1, Lcom/shabakaty/downloader/nu6;->d:Lcom/shabakaty/downloader/su6;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 125
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 126
    check-cast v2, Lcom/shabakaty/downloader/mn0;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 128
    iget-wide v14, v1, Lcom/shabakaty/downloader/nu6;->b:J

    sub-long v14, v2, v14

    iput-wide v2, v1, Lcom/shabakaty/downloader/nu6;->b:J

    cmp-long v1, v14, v5

    if-lez v1, :cond_15

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v12, v14, v15}, Lcom/google/android/gms/measurement/internal/f;->u(Landroid/os/Bundle;J)V

    .line 131
    :cond_15
    invoke-static {}, Lcom/shabakaty/downloader/w77;->c()Z

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 132
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 133
    sget-object v2, Lcom/shabakaty/downloader/d46;->i0:Lcom/shabakaty/downloader/z36;

    const/4 v14, 0x0

    .line 134
    invoke-virtual {v1, v14, v2}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "auto"

    .line 135
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "_ffr"

    if-nez v1, :cond_19

    const-string v1, "_ssr"

    .line 136
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    .line 138
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v3}, Lcom/shabakaty/downloader/ie4;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object v3, v14

    goto :goto_a

    :cond_16
    if-eqz v3, :cond_17

    .line 140
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 141
    :cond_17
    :goto_a
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    .line 143
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/c;->s:Lcom/shabakaty/downloader/s96;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/s96;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/f;->Y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 144
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    .line 145
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c;->s:Lcom/shabakaty/downloader/s96;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/s96;->b(Ljava/lang/String;)V

    goto :goto_b

    .line 146
    :cond_18
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 147
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 148
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v1, "Not logging duplicate session_start_with_rollout event"

    .line 149
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    return-void

    .line 150
    :cond_19
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    .line 153
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c;->s:Lcom/shabakaty/downloader/s96;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/s96;->a()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 155
    invoke-virtual {v12, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1a
    :goto_b
    new-instance v15, Ljava/util/ArrayList;

    .line 157
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 159
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    .line 160
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c;->n:Lcom/shabakaty/downloader/f96;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/f96;->a()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-lez v3, :cond_1b

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    .line 162
    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/c;->t(J)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 163
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    .line 164
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c;->p:Lcom/shabakaty/downloader/u86;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/u86;->b()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 165
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 166
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    .line 167
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 168
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 169
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-string v2, "auto"

    const-string v3, "_sid"

    move-object/from16 v1, p0

    move-object/from16 p5, v15

    move-wide v14, v5

    move-wide/from16 v5, v18

    .line 171
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/vn6;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 172
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 173
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_sno"

    move-object/from16 v1, p0

    .line 175
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/vn6;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 176
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 177
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "auto"

    const-string v3, "_se"

    move-object/from16 v1, p0

    .line 179
    invoke-virtual/range {v1 .. v6}, Lcom/shabakaty/downloader/vn6;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_c

    :cond_1b
    move-object/from16 p5, v15

    move-wide v14, v5

    :goto_c
    const-string v1, "extend_session"

    .line 180
    invoke-virtual {v12, v1, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1c

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 181
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 182
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 183
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 184
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->A()Lcom/shabakaty/downloader/su6;

    move-result-object v1

    iget-object v1, v1, Lcom/shabakaty/downloader/su6;->d:Lcom/shabakaty/downloader/qu6;

    const/4 v2, 0x1

    .line 185
    invoke-virtual {v1, v10, v11, v2}, Lcom/shabakaty/downloader/qu6;->b(JZ)V

    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    .line 186
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v2, :cond_21

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 188
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_20

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 189
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    .line 190
    invoke-virtual {v12, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 191
    instance-of v6, v4, Landroid/os/Bundle;

    if-eqz v6, :cond_1d

    const/4 v6, 0x1

    new-array v14, v6, [Landroid/os/Bundle;

    .line 192
    check-cast v4, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v4, v14, v6

    move-object v4, v14

    goto :goto_e

    .line 193
    :cond_1d
    instance-of v6, v4, [Landroid/os/Parcelable;

    if-eqz v6, :cond_1e

    .line 194
    check-cast v4, [Landroid/os/Parcelable;

    array-length v6, v4

    const-class v14, [Landroid/os/Bundle;

    .line 195
    invoke-static {v4, v6, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Bundle;

    goto :goto_e

    .line 196
    :cond_1e
    instance-of v6, v4, Ljava/util/ArrayList;

    if-eqz v6, :cond_1f

    .line 197
    check-cast v4, Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Bundle;

    goto :goto_e

    :cond_1f
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_20

    .line 199
    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_21
    const/4 v12, 0x0

    .line 200
    :goto_f
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_26

    move-object/from16 v14, p5

    .line 201
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v12, :cond_22

    const-string v2, "_ep"

    goto :goto_10

    :cond_22
    move-object v2, v9

    .line 202
    :goto_10
    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_23

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 203
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    .line 204
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/f;->q0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_23
    move-object v15, v1

    .line 205
    new-instance v5, Lcom/shabakaty/downloader/ek5;

    new-instance v3, Lcom/shabakaty/downloader/uj5;

    invoke-direct {v3, v15}, Lcom/shabakaty/downloader/uj5;-><init>(Landroid/os/Bundle;)V

    move-object v1, v5

    move-object/from16 v4, p1

    move-object/from16 p6, v0

    move-object v0, v5

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/ek5;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/uj5;Ljava/lang/String;J)V

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 206
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object v1

    .line 207
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v1}, Lcom/shabakaty/downloader/d56;->e()V

    .line 209
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka6;->f()V

    .line 210
    invoke-virtual {v1}, Lcom/shabakaty/downloader/zs6;->u()Z

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 211
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/shabakaty/downloader/z56;

    move-result-object v2

    .line 212
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    .line 214
    invoke-static {v0, v3, v4}, Lcom/shabakaty/downloader/lk5;->a(Lcom/shabakaty/downloader/ek5;Landroid/os/Parcel;I)V

    .line 215
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 216
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 217
    array-length v3, v4

    const/high16 v5, 0x20000

    if-le v3, v5, :cond_24

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 218
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 219
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->g:Lcom/shabakaty/downloader/s66;

    const-string v3, "Event is too long for local database. Sending event directly to service"

    .line 220
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v21, 0x0

    goto :goto_11

    :cond_24
    const/4 v3, 0x0

    .line 221
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/z56;->o(I[B)Z

    move-result v5

    move/from16 v21, v5

    const/4 v2, 0x1

    .line 222
    :goto_11
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/zs6;->q(Z)Lcom/shabakaty/downloader/ma7;

    move-result-object v20

    new-instance v2, Lcom/shabakaty/downloader/jz5;

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v22, v0

    move-object/from16 v23, p9

    .line 223
    invoke-direct/range {v18 .. v23}, Lcom/shabakaty/downloader/jz5;-><init>(Lcom/shabakaty/downloader/zs6;Lcom/shabakaty/downloader/ma7;ZLcom/shabakaty/downloader/ek5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/zs6;->t(Ljava/lang/Runnable;)V

    if-nez v16, :cond_25

    .line 224
    iget-object v0, v7, Lcom/shabakaty/downloader/vn6;->e:Ljava/util/Set;

    .line 225
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/oj6;

    new-instance v4, Landroid/os/Bundle;

    .line 226
    invoke-direct {v4, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    .line 227
    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/downloader/oj6;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_12

    :cond_25
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p6

    move-object/from16 p5, v14

    goto/16 :goto_f

    :cond_26
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 228
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 229
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->y()Lcom/shabakaty/downloader/aq6;

    move-result-object v0

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/aq6;->o(Z)Lcom/shabakaty/downloader/jp6;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 231
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 232
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->A()Lcom/shabakaty/downloader/su6;

    move-result-object v0

    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 233
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 234
    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 236
    iget-object v0, v0, Lcom/shabakaty/downloader/su6;->e:Lcom/shabakaty/downloader/nu6;

    const/4 v3, 0x1

    .line 237
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/shabakaty/downloader/nu6;->a(ZZJ)Z

    :cond_27
    return-void

    .line 238
    :cond_28
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 239
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 240
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v1, "Event not sent since app measurement is disabled"

    .line 241
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final r(JZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka6;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->m:Lcom/shabakaty/downloader/s66;

    const-string v1, "Resetting analytics data (FE)"

    .line 5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->A()Lcom/shabakaty/downloader/su6;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d56;->e()V

    iget-object v0, v0, Lcom/shabakaty/downloader/su6;->e:Lcom/shabakaty/downloader/nu6;

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/nu6;->c:Lcom/shabakaty/downloader/li5;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/li5;->a()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/shabakaty/downloader/nu6;->a:J

    iput-wide v1, v0, Lcom/shabakaty/downloader/nu6;->b:J

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->d()Z

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/c;->e:Lcom/shabakaty/downloader/f96;

    .line 13
    invoke-virtual {v4, p1, p2}, Lcom/shabakaty/downloader/f96;->b(J)V

    iget-object p1, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c;->s:Lcom/shabakaty/downloader/s96;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/s96;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iget-object p1, v3, Lcom/google/android/gms/measurement/internal/c;->s:Lcom/shabakaty/downloader/s96;

    .line 16
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s96;->b(Ljava/lang/String;)V

    .line 17
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/y87;->c()Z

    iget-object p1, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 19
    sget-object v4, Lcom/shabakaty/downloader/d46;->j0:Lcom/shabakaty/downloader/z36;

    invoke-virtual {p1, p2, v4}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v3, Lcom/google/android/gms/measurement/internal/c;->n:Lcom/shabakaty/downloader/f96;

    .line 20
    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/f96;->b(J)V

    :cond_1
    iget-object p1, v3, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 21
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 22
    invoke-virtual {p1}, Lcom/shabakaty/downloader/hg5;->x()Z

    move-result p1

    if-nez p1, :cond_2

    xor-int/lit8 p1, v0, 0x1

    .line 23
    invoke-virtual {v3, p1}, Lcom/google/android/gms/measurement/internal/c;->s(Z)V

    :cond_2
    iget-object p1, v3, Lcom/google/android/gms/measurement/internal/c;->t:Lcom/shabakaty/downloader/s96;

    .line 24
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/s96;->b(Ljava/lang/String;)V

    iget-object p1, v3, Lcom/google/android/gms/measurement/internal/c;->u:Lcom/shabakaty/downloader/f96;

    .line 25
    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/f96;->b(J)V

    iget-object p1, v3, Lcom/google/android/gms/measurement/internal/c;->v:Lcom/shabakaty/downloader/z86;

    .line 26
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/z86;->b(Landroid/os/Bundle;)V

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/shabakaty/downloader/d56;->e()V

    .line 29
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka6;->f()V

    const/4 p3, 0x0

    .line 30
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/zs6;->q(Z)Lcom/shabakaty/downloader/ma7;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zs6;->u()Z

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/shabakaty/downloader/z56;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/shabakaty/downloader/z56;->j()V

    new-instance v2, Lcom/shabakaty/downloader/kq6;

    .line 34
    invoke-direct {v2, p1, v1, p3}, Lcom/shabakaty/downloader/kq6;-><init>(Lcom/shabakaty/downloader/zs6;Lcom/shabakaty/downloader/ma7;I)V

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/zs6;->t(Ljava/lang/Runnable;)V

    .line 35
    :cond_3
    invoke-static {}, Lcom/shabakaty/downloader/y87;->c()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 36
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 37
    invoke-virtual {p1, p2, v4}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->A()Lcom/shabakaty/downloader/su6;

    move-result-object p1

    .line 39
    iget-object p1, p1, Lcom/shabakaty/downloader/su6;->d:Lcom/shabakaty/downloader/qu6;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qu6;->a()V

    :cond_4
    xor-int/lit8 p1, v0, 0x1

    iput-boolean p1, p0, Lcom/shabakaty/downloader/vn6;->o:Z

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 14

    .line 1
    new-instance v6, Landroid/os/Bundle;

    move-object/from16 v0, p5

    .line 2
    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    .line 7
    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 9
    check-cast v2, [Landroid/os/Parcelable;

    .line 10
    :goto_1
    array-length v1, v2

    if-ge v3, v1, :cond_0

    .line 11
    aget-object v1, v2, v3

    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    .line 12
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v4, v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_3
    instance-of v1, v2, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 14
    check-cast v2, Ljava/util/List;

    .line 15
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 17
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_4

    new-instance v4, Landroid/os/Bundle;

    .line 18
    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move-object v11, p0

    iget-object v0, v11, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v12

    new-instance v13, Lcom/shabakaty/downloader/il6;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 20
    invoke-direct/range {v0 .. v10}, Lcom/shabakaty/downloader/il6;-><init>(Lcom/shabakaty/downloader/vn6;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 21
    invoke-virtual {v12, v13}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v8, Lcom/shabakaty/downloader/zh6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/zh6;-><init>(Lcom/shabakaty/downloader/vn6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 3
    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u(Landroid/os/Bundle;J)V
    .locals 12

    .line 1
    const-class v0, Ljava/lang/Long;

    const-class v1, Ljava/lang/String;

    const-string v2, "null reference"

    .line 2
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    .line 5
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    .line 7
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v5, "Package name should be null when calling setConditionalUserProperty"

    .line 8
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 10
    invoke-static {v3, p1, v1, v4}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    .line 11
    invoke-static {v3, p1, v1, v4}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "name"

    .line 12
    invoke-static {v3, v5, v1, v4}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v6, Ljava/lang/Object;

    const-string v7, "value"

    .line 13
    invoke-static {v3, v7, v6, v4}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "trigger_event_name"

    .line 14
    invoke-static {v3, v6, v1, v4}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    .line 15
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "trigger_timeout"

    .line 16
    invoke-static {v3, v9, v0, v8}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "timed_out_event_name"

    .line 17
    invoke-static {v3, v10, v1, v4}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v10, Landroid/os/Bundle;

    const-string v11, "timed_out_event_params"

    .line 18
    invoke-static {v3, v11, v10, v4}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "triggered_event_name"

    .line 19
    invoke-static {v3, v10, v1, v4}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v10, Landroid/os/Bundle;

    const-string v11, "triggered_event_params"

    .line 20
    invoke-static {v3, v11, v10, v4}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "time_to_live"

    .line 21
    invoke-static {v3, v10, v0, v8}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "expired_event_name"

    .line 22
    invoke-static {v3, v0, v1, v4}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/os/Bundle;

    const-string v1, "expired_event_params"

    .line 23
    invoke-static {v3, v1, v0, v4}, Lcom/shabakaty/downloader/tp6;->i(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "creation_timestamp"

    .line 28
    invoke-virtual {v3, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 31
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object p3

    .line 32
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/f;->k0(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 33
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object p3

    .line 34
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/f;->g0(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 35
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object p3

    .line 36
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/f;->p(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 37
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p3

    .line 38
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to normalize conditional user property value"

    .line 42
    invoke-virtual {p3, v0, p1, p2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 43
    :cond_1
    invoke-static {v3, p3}, Lcom/shabakaty/downloader/tp6;->k(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 45
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide v4, 0x39ef8b000L

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v0, p2, v4

    if-gtz v0, :cond_2

    cmp-long v0, p2, v1

    if-ltz v0, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 50
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property timeout"

    .line 55
    invoke-virtual {v0, p3, p1, p2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 56
    :cond_3
    :goto_0
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v0, p2, v4

    if-gtz v0, :cond_5

    cmp-long v0, p2, v1

    if-gez v0, :cond_4

    goto :goto_1

    .line 58
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object p1

    new-instance p2, Lcom/shabakaty/downloader/zj6;

    const/4 p3, 0x1

    .line 60
    invoke-direct {p2, p0, v3, p3}, Lcom/shabakaty/downloader/zj6;-><init>(Lcom/shabakaty/downloader/vn6;Landroid/os/Bundle;I)V

    .line 61
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void

    .line 62
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 64
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v1

    .line 67
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Invalid conditional user property time to live"

    .line 69
    invoke-virtual {v0, p3, p1, p2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 70
    :cond_6
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 71
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p3

    .line 72
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid conditional user property value"

    .line 76
    invoke-virtual {p3, v0, p1, p2}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 77
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 78
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 79
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 80
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/shabakaty/downloader/e66;

    move-result-object p3

    .line 81
    invoke-virtual {p3, p1}, Lcom/shabakaty/downloader/e66;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Invalid conditional user property name"

    .line 82
    invoke-virtual {p2, p3, p1}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final v(Landroid/os/Bundle;IJ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka6;->f()V

    const-string v0, "ad_storage"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/qg5;->k(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v0, "analytics_storage"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/qg5;->k(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->k:Lcom/shabakaty/downloader/s66;

    const-string v2, "Ignoring invalid consent setting"

    .line 9
    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->k:Lcom/shabakaty/downloader/s66;

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    .line 12
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/shabakaty/downloader/qg5;->a(Landroid/os/Bundle;)Lcom/shabakaty/downloader/qg5;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/vn6;->w(Lcom/shabakaty/downloader/qg5;IJ)V

    return-void
.end method

.method public final w(Lcom/shabakaty/downloader/qg5;IJ)V
    .locals 14

    move-object v10, p0

    move-object v0, p1

    move/from16 v6, p2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka6;->f()V

    const/16 v1, -0xa

    if-eq v6, v1, :cond_1

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/qg5;->a:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/qg5;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->k:Lcom/shabakaty/downloader/s66;

    const-string v1, "Discarding empty consent settings"

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    :goto_0
    iget-object v2, v10, Lcom/shabakaty/downloader/vn6;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, v10, Lcom/shabakaty/downloader/vn6;->j:I

    invoke-static {v6, v3}, Lcom/shabakaty/downloader/qg5;->h(II)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_5

    iget-object v3, v10, Lcom/shabakaty/downloader/vn6;->i:Lcom/shabakaty/downloader/qg5;

    .line 9
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/qg5;->i(Lcom/shabakaty/downloader/qg5;)Z

    move-result v3

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qg5;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v10, Lcom/shabakaty/downloader/vn6;->i:Lcom/shabakaty/downloader/qg5;

    .line 11
    invoke-virtual {v5}, Lcom/shabakaty/downloader/qg5;->g()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    iget-object v5, v10, Lcom/shabakaty/downloader/vn6;->i:Lcom/shabakaty/downloader/qg5;

    .line 12
    new-instance v7, Lcom/shabakaty/downloader/qg5;

    iget-object v8, v0, Lcom/shabakaty/downloader/qg5;->a:Ljava/lang/Boolean;

    if-nez v8, :cond_3

    .line 13
    iget-object v8, v5, Lcom/shabakaty/downloader/qg5;->a:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, v0, Lcom/shabakaty/downloader/qg5;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 14
    iget-object v0, v5, Lcom/shabakaty/downloader/qg5;->b:Ljava/lang/Boolean;

    :cond_4
    invoke-direct {v7, v8, v0}, Lcom/shabakaty/downloader/qg5;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 15
    iput-object v7, v10, Lcom/shabakaty/downloader/vn6;->i:Lcom/shabakaty/downloader/qg5;

    iput v6, v10, Lcom/shabakaty/downloader/vn6;->j:I

    move v0, v3

    move v9, v4

    move-object v3, v7

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    move-object v3, v0

    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 16
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_6

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->l:Lcom/shabakaty/downloader/s66;

    const-string v1, "Ignoring lower-priority consent settings, proposed settings"

    .line 19
    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/s66;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v2, v10, Lcom/shabakaty/downloader/vn6;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v7

    if-eqz v0, :cond_7

    iget-object v0, v10, Lcom/shabakaty/downloader/vn6;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v12, Lcom/shabakaty/downloader/an6;

    move-object v1, v12

    move-object v2, p0

    move-wide/from16 v4, p3

    move/from16 v6, p2

    .line 23
    invoke-direct/range {v1 .. v9}, Lcom/shabakaty/downloader/an6;-><init>(Lcom/shabakaty/downloader/vn6;Lcom/shabakaty/downloader/qg5;JIJZ)V

    .line 24
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mi6;->h()V

    .line 25
    new-instance v1, Lcom/shabakaty/downloader/sd6;

    const-string v2, "Task exception on worker thread"

    .line 26
    invoke-direct {v1, v0, v12, v11, v2}, Lcom/shabakaty/downloader/sd6;-><init>(Lcom/shabakaty/downloader/de6;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/de6;->u(Lcom/shabakaty/downloader/sd6;)V

    return-void

    :cond_7
    const/16 v0, 0x1e

    if-eq v6, v0, :cond_9

    if-ne v6, v1, :cond_8

    goto :goto_2

    .line 27
    :cond_8
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v11, Lcom/shabakaty/downloader/en6;

    const/4 v12, 0x1

    move-object v1, v11

    move-object v2, p0

    move/from16 v4, p2

    move-wide v5, v7

    move v7, v9

    move v8, v12

    .line 29
    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/en6;-><init>(Lcom/shabakaty/downloader/vn6;Lcom/shabakaty/downloader/qg5;IJZI)V

    .line 30
    invoke-virtual {v0, v11}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void

    .line 31
    :cond_9
    :goto_2
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v12, Lcom/shabakaty/downloader/en6;

    const/4 v13, 0x0

    move-object v1, v12

    move-object v2, p0

    move/from16 v4, p2

    move-wide v5, v7

    move v7, v9

    move v8, v13

    .line 33
    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/en6;-><init>(Lcom/shabakaty/downloader/vn6;Lcom/shabakaty/downloader/qg5;IJZI)V

    .line 34
    invoke-virtual {v0}, Lcom/shabakaty/downloader/mi6;->h()V

    .line 35
    new-instance v1, Lcom/shabakaty/downloader/sd6;

    const-string v2, "Task exception on worker thread"

    .line 36
    invoke-direct {v1, v0, v12, v11, v2}, Lcom/shabakaty/downloader/sd6;-><init>(Lcom/shabakaty/downloader/de6;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/de6;->u(Lcom/shabakaty/downloader/sd6;)V

    return-void

    :catchall_0
    move-exception v0

    .line 37
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final x(Lcom/shabakaty/downloader/qz2;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka6;->f()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/vn6;->d:Lcom/shabakaty/downloader/qz2;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/vn6;->d:Lcom/shabakaty/downloader/qz2;

    return-void
.end method

.method public final y(Lcom/shabakaty/downloader/qg5;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d56;->e()V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qg5;->g()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/qg5;->f()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->z()Lcom/shabakaty/downloader/zs6;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/zs6;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/de6;->e()V

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/d;->D:Z

    if-eq p1, v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/de6;->e()V

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/d;->D:Z

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->o()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "measurement_enabled_from_api"

    .line 11
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 13
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    :cond_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, v2}, Lcom/shabakaty/downloader/vn6;->C(Ljava/lang/Boolean;Z)V

    :cond_5
    return-void
.end method

.method public final z(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v2, "auto"

    const-string v3, "_ldl"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, p1

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/vn6;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method
