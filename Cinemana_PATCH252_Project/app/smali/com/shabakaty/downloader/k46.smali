.class public abstract Lcom/shabakaty/downloader/k46;
.super Lcom/shabakaty/downloader/aq5;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/o46;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/aq5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const/4 p4, 0x0

    const-string v0, "null reference"

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return p4

    .line 1
    :pswitch_1
    sget-object p1, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ma7;

    .line 2
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/di6;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/di6;->R0(Lcom/shabakaty/downloader/ma7;)V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 5
    sget-object p4, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ma7;

    .line 6
    move-object p4, p0

    check-cast p4, Lcom/shabakaty/downloader/di6;

    .line 7
    invoke-virtual {p4, p2}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    .line 8
    iget-object p2, p2, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 9
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/so5;

    .line 11
    invoke-direct {v0, p4, p2, p1}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/di6;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p4, v0}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 13
    :pswitch_3
    sget-object p1, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ma7;

    .line 14
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/di6;

    .line 15
    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-virtual {p2, v0, p4}, Lcom/shabakaty/downloader/di6;->g2(Ljava/lang/String;Z)V

    new-instance v0, Lcom/shabakaty/downloader/og6;

    .line 17
    invoke-direct {v0, p2, p1, p4}, Lcom/shabakaty/downloader/og6;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ma7;I)V

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 19
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 22
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/di6;

    invoke-virtual {v0, p1, p4, p2}, Lcom/shabakaty/downloader/di6;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 25
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 27
    sget-object v0, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ma7;

    .line 28
    move-object v0, p0

    check-cast v0, Lcom/shabakaty/downloader/di6;

    invoke-virtual {v0, p1, p4, p2}, Lcom/shabakaty/downloader/di6;->b0(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/ma7;)Ljava/util/List;

    move-result-object p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 31
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 34
    sget-object v3, Lcom/shabakaty/downloader/gq5;->a:Ljava/lang/ClassLoader;

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p4, 0x1

    .line 36
    :cond_0
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/di6;

    invoke-virtual {p2, p1, v0, v2, p4}, Lcom/shabakaty/downloader/di6;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 39
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 41
    sget-object v2, Lcom/shabakaty/downloader/gq5;->a:Ljava/lang/ClassLoader;

    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 p4, 0x1

    .line 43
    :cond_1
    sget-object v2, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ma7;

    .line 44
    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/di6;

    invoke-virtual {v2, p1, v0, p4, p2}, Lcom/shabakaty/downloader/di6;->K1(Ljava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/ma7;)Ljava/util/List;

    move-result-object p1

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 47
    :pswitch_8
    sget-object p1, Lcom/shabakaty/downloader/ve5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ve5;

    .line 48
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/di6;

    .line 49
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object p4, p1, Lcom/shabakaty/downloader/ve5;->t:Lcom/shabakaty/downloader/qy6;

    .line 51
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iget-object p4, p1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    iget-object p4, p1, Lcom/shabakaty/downloader/ve5;->r:Ljava/lang/String;

    invoke-virtual {p2, p4, v1}, Lcom/shabakaty/downloader/di6;->g2(Ljava/lang/String;Z)V

    new-instance p4, Lcom/shabakaty/downloader/ve5;

    .line 54
    invoke-direct {p4, p1}, Lcom/shabakaty/downloader/ve5;-><init>(Lcom/shabakaty/downloader/ve5;)V

    new-instance p1, Lcom/shabakaty/downloader/md7;

    .line 55
    invoke-direct {p1, p2, p4}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ve5;)V

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 57
    :pswitch_9
    sget-object p1, Lcom/shabakaty/downloader/ve5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ve5;

    .line 58
    sget-object p4, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ma7;

    .line 59
    move-object p4, p0

    check-cast p4, Lcom/shabakaty/downloader/di6;

    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/di6;->B(Lcom/shabakaty/downloader/ve5;Lcom/shabakaty/downloader/ma7;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 61
    :pswitch_a
    sget-object p1, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ma7;

    .line 62
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/di6;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/di6;->E1(Lcom/shabakaty/downloader/ma7;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 65
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 69
    move-object v2, p0

    check-cast v2, Lcom/shabakaty/downloader/di6;

    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/di6;->c1(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 71
    :pswitch_c
    sget-object p1, Lcom/shabakaty/downloader/ek5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ek5;

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 73
    move-object p4, p0

    check-cast p4, Lcom/shabakaty/downloader/di6;

    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/di6;->I0(Lcom/shabakaty/downloader/ek5;Ljava/lang/String;)[B

    move-result-object p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    .line 76
    :pswitch_d
    sget-object p1, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ma7;

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p4, 0x1

    .line 78
    :cond_2
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/di6;

    .line 79
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    .line 80
    iget-object v2, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    .line 81
    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iget-object v0, p2, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 83
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw6;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/downloader/sh6;

    invoke-direct {v3, p2, v2}, Lcom/shabakaty/downloader/sh6;-><init>(Lcom/shabakaty/downloader/di6;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/de6;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 85
    :try_start_0
    check-cast v0, Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/uy6;

    if-nez p4, :cond_4

    .line 88
    iget-object v4, v3, Lcom/shabakaty/downloader/uy6;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/f;->U(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 89
    :cond_4
    new-instance v4, Lcom/shabakaty/downloader/qy6;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/qy6;-><init>(Lcom/shabakaty/downloader/uy6;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    goto :goto_1

    :catch_1
    move-exception p4

    :goto_1
    iget-object p2, p2, Lcom/shabakaty/downloader/di6;->a:Lcom/shabakaty/downloader/uw6;

    .line 90
    invoke-virtual {p2}, Lcom/shabakaty/downloader/uw6;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p2

    .line 91
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/b;->f:Lcom/shabakaty/downloader/s66;

    .line 92
    iget-object p1, p1, Lcom/shabakaty/downloader/ma7;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/b;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Failed to get user properties. appId"

    .line 93
    invoke-virtual {p2, v0, p1, p4}, Lcom/shabakaty/downloader/s66;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 94
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 96
    :pswitch_e
    sget-object p1, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ma7;

    .line 97
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/di6;

    .line 98
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    new-instance p4, Lcom/shabakaty/downloader/og6;

    .line 99
    invoke-direct {p4, p2, p1, v1}, Lcom/shabakaty/downloader/og6;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ma7;I)V

    invoke-virtual {p2, p4}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 101
    :pswitch_f
    sget-object p1, Lcom/shabakaty/downloader/ek5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ek5;

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 104
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/di6;

    .line 105
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    invoke-static {p4}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    invoke-virtual {p2, p4, v1}, Lcom/shabakaty/downloader/di6;->g2(Ljava/lang/String;Z)V

    new-instance v0, Lcom/shabakaty/downloader/so5;

    .line 108
    invoke-direct {v0, p2, p1, p4}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ek5;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 110
    :pswitch_10
    sget-object p1, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ma7;

    .line 111
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/di6;

    .line 112
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    new-instance p4, Lcom/shabakaty/downloader/og6;

    const/4 v0, 0x3

    .line 113
    invoke-direct {p4, p2, p1, v0}, Lcom/shabakaty/downloader/og6;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ma7;I)V

    invoke-virtual {p2, p4}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 115
    :pswitch_11
    sget-object p1, Lcom/shabakaty/downloader/qy6;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qy6;

    .line 116
    sget-object p4, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ma7;

    .line 117
    move-object p4, p0

    check-cast p4, Lcom/shabakaty/downloader/di6;

    .line 118
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    invoke-virtual {p4, p2}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    new-instance v0, Lcom/shabakaty/downloader/so5;

    .line 120
    invoke-direct {v0, p4, p1, p2}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/qy6;Lcom/shabakaty/downloader/ma7;)V

    invoke-virtual {p4, v0}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 122
    :pswitch_12
    sget-object p1, Lcom/shabakaty/downloader/ek5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ek5;

    .line 123
    sget-object p4, Lcom/shabakaty/downloader/ma7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/gq5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ma7;

    .line 124
    move-object p4, p0

    check-cast p4, Lcom/shabakaty/downloader/di6;

    .line 125
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p4, p2}, Lcom/shabakaty/downloader/di6;->i2(Lcom/shabakaty/downloader/ma7;)V

    new-instance v0, Lcom/shabakaty/downloader/so5;

    .line 127
    invoke-direct {v0, p4, p1, p2}, Lcom/shabakaty/downloader/so5;-><init>(Lcom/shabakaty/downloader/di6;Lcom/shabakaty/downloader/ek5;Lcom/shabakaty/downloader/ma7;)V

    invoke-virtual {p4, v0}, Lcom/shabakaty/downloader/di6;->h2(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
