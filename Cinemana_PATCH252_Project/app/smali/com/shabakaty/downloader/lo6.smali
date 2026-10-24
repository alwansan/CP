.class public final Lcom/shabakaty/downloader/lo6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final g:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public final a:Lcom/shabakaty/downloader/u46;

.field public final b:Lcom/shabakaty/downloader/oz6;

.field public final c:Ljava/lang/Runnable;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/content/SharedPreferences;

.field public f:Lcom/shabakaty/downloader/s27;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "ApplicationAnalytics"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/lo6;->g:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/shabakaty/downloader/u46;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/lo6;->e:Landroid/content/SharedPreferences;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/lo6;->a:Lcom/shabakaty/downloader/u46;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/oz6;

    invoke-direct {p1, p3, p4}, Lcom/shabakaty/downloader/oz6;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/lo6;->b:Lcom/shabakaty/downloader/oz6;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/p36;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/p36;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/lo6;->d:Landroid/os/Handler;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/zz6;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/lo6;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/lo6;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tw;->k:Lcom/shabakaty/downloader/pk2;

    const-string v0, "Must be called from the main thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/tw;->l:Lcom/shabakaty/downloader/tw;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tw;->a()Lcom/shabakaty/downloader/vw;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/vw;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/shabakaty/downloader/lo6;Lcom/shabakaty/downloader/xw;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/lo6;->f(Lcom/shabakaty/downloader/xw;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/lo6;->b:Lcom/shabakaty/downloader/oz6;

    iget-object v0, p0, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/oz6;->d(Lcom/shabakaty/downloader/s27;)Lcom/shabakaty/downloader/wx6$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wx6$a;->n()Lcom/shabakaty/downloader/sx6;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sx6;->n(Lcom/shabakaty/downloader/sx6;)Lcom/shabakaty/downloader/sx6$a;

    move-result-object v1

    if-nez p2, :cond_0

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/ai6;->t:Lcom/shabakaty/downloader/ai6;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Lcom/shabakaty/downloader/ai6;->s:Lcom/shabakaty/downloader/ai6;

    .line 7
    :goto_0
    iget v2, v2, Lcom/shabakaty/downloader/ai6;->r:I

    .line 8
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/sx6$a;->m(I)Lcom/shabakaty/downloader/sx6$a;

    .line 9
    iget-object v2, p1, Lcom/shabakaty/downloader/oz6;->b:Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/oz6;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit16 p1, p2, 0x2710

    .line 11
    :goto_2
    iget-boolean p2, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/shabakaty/downloader/b37$b;->j()V

    const/4 p2, 0x0

    .line 13
    iput-boolean p2, v1, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 14
    :cond_3
    iget-object p2, v1, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    check-cast p2, Lcom/shabakaty/downloader/sx6;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/sx6;->s(Lcom/shabakaty/downloader/sx6;I)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/wx6$a;->m(Lcom/shabakaty/downloader/sx6$a;)Lcom/shabakaty/downloader/wx6$a;

    .line 16
    invoke-virtual {v0}, Lcom/shabakaty/downloader/b37$b;->l()Lcom/shabakaty/downloader/d77;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b37;

    check-cast p1, Lcom/shabakaty/downloader/wx6;

    .line 17
    iget-object p2, p0, Lcom/shabakaty/downloader/lo6;->a:Lcom/shabakaty/downloader/u46;

    sget-object v0, Lcom/shabakaty/downloader/ep6;->y:Lcom/shabakaty/downloader/ep6;

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/u46;->a(Lcom/shabakaty/downloader/wx6;Lcom/shabakaty/downloader/ep6;)V

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/lo6;->d:Landroid/os/Handler;

    iget-object p2, p0, Lcom/shabakaty/downloader/lo6;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    return-void
.end method

.method public static d(Lcom/shabakaty/downloader/lo6;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    iget-object p0, p0, Lcom/shabakaty/downloader/lo6;->e:Landroid/content/SharedPreferences;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/s27;->f:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "Save the ApplicationAnalyticsSession to SharedPreferences %s"

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/s27;->a:Ljava/lang/String;

    const-string v2, "application_id"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/s27;->b:Ljava/lang/String;

    const-string v2, "receiver_metrics_id"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget-wide v1, v0, Lcom/shabakaty/downloader/s27;->c:J

    const-string v3, "analytics_session_id"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget v1, v0, Lcom/shabakaty/downloader/s27;->d:I

    const-string v2, "event_sequence_number"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/s27;->e:Ljava/lang/String;

    const-string v1, "receiver_session_id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/lo6;->g:Lcom/shabakaty/downloader/pk2;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "The analytics session is null when matching with application ID."

    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/lo6;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    iget-object v3, v3, Lcom/shabakaty/downloader/s27;->a:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 5
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    .line 6
    :cond_2
    :goto_0
    sget-object v3, Lcom/shabakaty/downloader/lo6;->g:Lcom/shabakaty/downloader/pk2;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "The analytics session doesn\'t match the application ID %s"

    invoke-virtual {v3, v0, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public final e(Lcom/shabakaty/downloader/xw;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lo6;->g:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Create a new ApplicationAnalyticsSession based on CastSession"

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/s27;

    invoke-direct {v0}, Lcom/shabakaty/downloader/s27;-><init>()V

    .line 3
    sget-wide v1, Lcom/shabakaty/downloader/s27;->g:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/shabakaty/downloader/s27;->g:J

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/lo6;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/s27;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xw;->j()Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xw;->j()Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/cast/CastDevice;->C:Ljava/lang/String;

    .line 9
    iput-object p1, v0, Lcom/shabakaty/downloader/s27;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final f(Lcom/shabakaty/downloader/xw;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lo6;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xw;->j()Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    iget-object v0, v0, Lcom/shabakaty/downloader/s27;->b:Ljava/lang/String;

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/cast/CastDevice;->C:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/cast/CastDevice;->C:Ljava/lang/String;

    .line 8
    iput-object p1, v0, Lcom/shabakaty/downloader/s27;->b:Ljava/lang/String;

    :cond_1
    return-void

    .line 9
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/lo6;->g:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    iget-object v2, v0, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v3, "The analyticsSession should not be null for logging. Create a dummy one."

    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/lo6;->e(Lcom/shabakaty/downloader/xw;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lo6;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2
    iget-object v2, p0, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    iget-object v2, v2, Lcom/shabakaty/downloader/s27;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 3
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 4
    :cond_2
    :goto_0
    sget-object v2, Lcom/shabakaty/downloader/lo6;->g:Lcom/shabakaty/downloader/pk2;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "The analytics session doesn\'t match the receiver session ID %s."

    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
