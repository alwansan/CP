.class public Lcom/shabakaty/downloader/ub3;
.super Ljava/lang/Object;
.source "PerfSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shabakaty/downloader/ub3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Lcom/shabakaty/downloader/pn4;

.field public t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ub3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ub3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ub3;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/shabakaty/downloader/ub3$a;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ub3;->t:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ub3;->r:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ub3;->t:Z

    .line 10
    const-class p2, Lcom/shabakaty/downloader/pn4;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/pn4;

    iput-object p1, p0, Lcom/shabakaty/downloader/ub3;->s:Lcom/shabakaty/downloader/pn4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/ll3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ub3;->t:Z

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ub3;->r:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/pn4;

    invoke-direct {p1}, Lcom/shabakaty/downloader/pn4;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ub3;->s:Lcom/shabakaty/downloader/pn4;

    return-void
.end method

.method public static b(Ljava/util/List;)[Lcom/shabakaty/downloader/tb3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ub3;",
            ">;)[",
            "Lcom/google/firebase/perf/v1/PerfSession;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/shabakaty/downloader/tb3;

    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ub3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ub3;->a()Lcom/shabakaty/downloader/tb3;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 5
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/ub3;

    invoke-virtual {v6}, Lcom/shabakaty/downloader/ub3;->a()Lcom/shabakaty/downloader/tb3;

    move-result-object v6

    if-nez v5, :cond_1

    .line 6
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ub3;

    .line 7
    iget-boolean v7, v7, Lcom/shabakaty/downloader/ub3;->t:Z

    if-eqz v7, :cond_1

    .line 8
    aput-object v6, v0, v1

    .line 9
    aput-object v2, v0, v4

    const/4 v5, 0x1

    goto :goto_1

    .line 10
    :cond_1
    aput-object v6, v0, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 11
    aput-object v2, v0, v1

    :cond_3
    return-object v0
.end method

.method public static c()Lcom/shabakaty/downloader/ub3;
    .locals 11

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\-"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/ub3;

    new-instance v2, Lcom/shabakaty/downloader/ll3;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/ll3;-><init>(I)V

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/ub3;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ll3;)V

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/w90;->e()Lcom/shabakaty/downloader/w90;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/w90;->o()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    .line 7
    const-class v2, Lcom/shabakaty/downloader/pa0;

    monitor-enter v2

    .line 8
    :try_start_0
    sget-object v7, Lcom/shabakaty/downloader/pa0;->a:Lcom/shabakaty/downloader/pa0;

    if-nez v7, :cond_0

    .line 9
    new-instance v7, Lcom/shabakaty/downloader/pa0;

    invoke-direct {v7}, Lcom/shabakaty/downloader/pa0;-><init>()V

    sput-object v7, Lcom/shabakaty/downloader/pa0;->a:Lcom/shabakaty/downloader/pa0;

    .line 10
    :cond_0
    sget-object v7, Lcom/shabakaty/downloader/pa0;->a:Lcom/shabakaty/downloader/pa0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 11
    iget-object v2, v0, Lcom/shabakaty/downloader/w90;->b:Lcom/shabakaty/downloader/xz1;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "sessions_sampling_percentage"

    .line 12
    invoke-virtual {v2, v8}, Lcom/shabakaty/downloader/xz1;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 13
    new-instance v2, Lcom/shabakaty/downloader/d83;

    invoke-direct {v2}, Lcom/shabakaty/downloader/d83;-><init>()V

    goto :goto_0

    .line 14
    :cond_1
    :try_start_1
    iget-object v2, v2, Lcom/shabakaty/downloader/xz1;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/Float;

    invoke-static {v2}, Lcom/shabakaty/downloader/d83;->a(Ljava/lang/Object;)Lcom/shabakaty/downloader/d83;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 16
    sget-object v9, Lcom/shabakaty/downloader/xz1;->b:Lcom/shabakaty/downloader/i7;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v4

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v3

    const-string v2, "Metadata key %s contains type other than float: %s"

    invoke-virtual {v9, v2, v10}, Lcom/shabakaty/downloader/i7;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v2, Lcom/shabakaty/downloader/d83;

    invoke-direct {v2}, Lcom/shabakaty/downloader/d83;-><init>()V

    .line 18
    :goto_0
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 19
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v2, v8

    .line 20
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/w90;->p(F)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/w90;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-string v8, "fpr_vc_session_sampling_rate"

    invoke-virtual {v2, v8}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getFloat(Ljava/lang/String;)Lcom/shabakaty/downloader/d83;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/w90;->p(F)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 23
    iget-object v0, v0, Lcom/shabakaty/downloader/w90;->c:Lcom/shabakaty/downloader/ms0;

    const-string v7, "com.google.firebase.perf.SessionSamplingRate"

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/shabakaty/downloader/ms0;->c(Ljava/lang/String;F)Z

    .line 24
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/w90;->b(Lcom/shabakaty/downloader/ta0;)Lcom/shabakaty/downloader/d83;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d83;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/shabakaty/downloader/w90;->p(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d83;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_4
    const v0, 0x3c23d70a    # 0.01f

    .line 28
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    float-to-double v7, v2

    cmpg-double v0, v5, v7

    if-gez v0, :cond_5

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit v2

    throw v0

    :cond_5
    const/4 v3, 0x0

    .line 31
    :goto_2
    iput-boolean v3, v1, Lcom/shabakaty/downloader/ub3;->t:Z

    return-object v1
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/tb3;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/tb3;->F()Lcom/shabakaty/downloader/tb3$b;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ub3;->r:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v2, Lcom/shabakaty/downloader/tb3;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/tb3;->B(Lcom/shabakaty/downloader/tb3;Ljava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ub3;->t:Z

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/d24;->t:Lcom/shabakaty/downloader/d24;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 7
    iget-object v2, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v2, Lcom/shabakaty/downloader/tb3;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/tb3;->C(Lcom/shabakaty/downloader/tb3;Lcom/shabakaty/downloader/d24;)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->n()Lcom/shabakaty/downloader/qp1;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tb3;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/ub3;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ub3;->t:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/ub3;->s:Lcom/shabakaty/downloader/pn4;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
