.class public abstract Lcom/shabakaty/downloader/hh5;
.super Lcom/shabakaty/downloader/jd5;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/qh5;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.cast.framework.internal.IMediaRouter"

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/jd5;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final r(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/tk5;

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/tk5;->b:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    .line 3
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/g$b;

    .line 4
    iget-object v1, p1, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/g;->i(Landroidx/mediarouter/media/g$b;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/tk5;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 7
    :pswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const p1, 0xbdfcc1

    .line 8
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    .line 9
    :pswitch_2
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/tk5;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-virtual {p1}, Landroidx/mediarouter/media/g;->g()Landroidx/mediarouter/media/g$h;

    move-result-object p1

    .line 11
    iget-object p1, p1, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 14
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 15
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/tk5;

    .line 16
    iget-object p2, p2, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-virtual {p2}, Landroidx/mediarouter/media/g;->f()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/g$h;

    .line 17
    iget-object v1, v0, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    iget-object p4, v0, Landroidx/mediarouter/media/g$h;->r:Landroid/os/Bundle;

    .line 20
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-static {p3, p4}, Lcom/shabakaty/downloader/pz5;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_4

    .line 22
    :pswitch_4
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/tk5;

    .line 23
    iget-object p2, p1, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-virtual {p2}, Landroidx/mediarouter/media/g;->g()Landroidx/mediarouter/media/g$h;

    move-result-object p2

    .line 24
    iget-object p2, p2, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 25
    iget-object p1, p1, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 27
    sget-object p1, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-virtual {p1}, Landroidx/mediarouter/media/g$e;->f()Landroidx/mediarouter/media/g$h;

    move-result-object p1

    .line 28
    iget-object p1, p1, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    sget p2, Lcom/shabakaty/downloader/pz5;->a:I

    .line 32
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    .line 33
    :pswitch_5
    move-object p1, p0

    check-cast p1, Lcom/shabakaty/downloader/tk5;

    .line 34
    iget-object p1, p1, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 36
    sget-object p2, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    invoke-virtual {p2}, Landroidx/mediarouter/media/g$e;->f()Landroidx/mediarouter/media/g$h;

    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/g;->j(Landroidx/mediarouter/media/g$h;)V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 39
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 40
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/tk5;

    .line 41
    iget-object p4, p2, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-virtual {p4}, Landroidx/mediarouter/media/g;->f()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/g$h;

    .line 42
    iget-object v1, v0, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    iget-object p1, p2, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/g;->j(Landroidx/mediarouter/media/g$h;)V

    .line 45
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 46
    :pswitch_7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 48
    move-object p4, p0

    check-cast p4, Lcom/shabakaty/downloader/tk5;

    .line 49
    iget-object p4, p4, Lcom/shabakaty/downloader/tk5;->a:Landroidx/mediarouter/media/g;

    invoke-static {p1}, Landroidx/mediarouter/media/f;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/f;

    move-result-object p1

    invoke-virtual {p4, p1, p2}, Landroidx/mediarouter/media/g;->h(Landroidx/mediarouter/media/f;I)Z

    move-result p1

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    .line 52
    :pswitch_8
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 53
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/tk5;

    .line 54
    invoke-static {p1}, Landroidx/mediarouter/media/f;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/f;

    move-result-object p1

    .line 55
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p4, v0, :cond_6

    .line 56
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/tk5;->h2(Landroidx/mediarouter/media/f;)V

    goto :goto_1

    .line 57
    :cond_6
    new-instance p4, Lcom/shabakaty/downloader/p36;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/shabakaty/downloader/p36;-><init>(Landroid/os/Looper;)V

    .line 58
    new-instance v0, Lcom/shabakaty/downloader/md7;

    invoke-direct {v0, p2, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/shabakaty/downloader/tk5;Landroidx/mediarouter/media/f;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_4

    .line 60
    :pswitch_9
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 62
    move-object p4, p0

    check-cast p4, Lcom/shabakaty/downloader/tk5;

    .line 63
    invoke-static {p1}, Landroidx/mediarouter/media/f;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/f;

    move-result-object p1

    .line 64
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 65
    invoke-virtual {p4, p1, p2}, Lcom/shabakaty/downloader/tk5;->i2(Landroidx/mediarouter/media/f;I)V

    goto :goto_2

    .line 66
    :cond_7
    new-instance v0, Lcom/shabakaty/downloader/p36;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/p36;-><init>(Landroid/os/Looper;)V

    .line 67
    new-instance v1, Lcom/shabakaty/downloader/jl5;

    invoke-direct {v1, p4, p1, p2}, Lcom/shabakaty/downloader/jl5;-><init>(Lcom/shabakaty/downloader/tk5;Landroidx/mediarouter/media/f;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4

    .line 69
    :pswitch_a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/pz5;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    const-string p4, "com.google.android.gms.cast.framework.internal.IMediaRouterCallback"

    .line 71
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 72
    instance-of v0, p4, Lcom/shabakaty/downloader/fi5;

    if-eqz v0, :cond_9

    .line 73
    check-cast p4, Lcom/shabakaty/downloader/fi5;

    goto :goto_3

    .line 74
    :cond_9
    new-instance p4, Lcom/shabakaty/downloader/yh5;

    invoke-direct {p4, p2}, Lcom/shabakaty/downloader/yh5;-><init>(Landroid/os/IBinder;)V

    .line 75
    :goto_3
    move-object p2, p0

    check-cast p2, Lcom/shabakaty/downloader/tk5;

    .line 76
    invoke-static {p1}, Landroidx/mediarouter/media/f;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/f;

    move-result-object p1

    .line 77
    iget-object v0, p2, Lcom/shabakaty/downloader/tk5;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 78
    iget-object v0, p2, Lcom/shabakaty/downloader/tk5;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_a
    iget-object p2, p2, Lcom/shabakaty/downloader/tk5;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    new-instance p2, Lcom/shabakaty/downloader/uk5;

    invoke-direct {p2, p4}, Lcom/shabakaty/downloader/uk5;-><init>(Lcom/shabakaty/downloader/fi5;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
    .end packed-switch
.end method
