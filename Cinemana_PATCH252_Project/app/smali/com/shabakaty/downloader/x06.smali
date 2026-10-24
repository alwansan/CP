.class public final Lcom/shabakaty/downloader/x06;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/shabakaty/downloader/r06;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4

    iput p1, p0, Lcom/shabakaty/downloader/x06;->a:I

    const/16 v0, 0xa

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {p1, v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Lcom/shabakaty/downloader/x06;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/x06;->c:Ljava/lang/ref/ReferenceQueue;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-direct {p1, v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Lcom/shabakaty/downloader/x06;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/x06;->c:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Z)Ljava/util/List;
    .locals 3

    iget p2, p0, Lcom/shabakaty/downloader/x06;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object p2, p0, Lcom/shabakaty/downloader/x06;->c:Ljava/lang/ref/ReferenceQueue;

    .line 2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/shabakaty/downloader/x06;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/shabakaty/downloader/x06;->c:Ljava/lang/ref/ReferenceQueue;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lcom/shabakaty/downloader/r06;

    .line 5
    invoke-direct {p2, p1, v1}, Lcom/shabakaty/downloader/r06;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/x06;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/Vector;

    .line 7
    invoke-direct {p2, v0}, Ljava/util/Vector;-><init>(I)V

    iget-object v0, p0, Lcom/shabakaty/downloader/x06;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/shabakaty/downloader/r06;

    iget-object v2, p0, Lcom/shabakaty/downloader/x06;->c:Ljava/lang/ref/ReferenceQueue;

    .line 8
    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/r06;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p1

    :goto_1
    return-object p2

    .line 9
    :goto_2
    iget-object p2, p0, Lcom/shabakaty/downloader/x06;->c:Ljava/lang/ref/ReferenceQueue;

    .line 10
    :goto_3
    invoke-virtual {p2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/shabakaty/downloader/x06;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/shabakaty/downloader/x06;->c:Ljava/lang/ref/ReferenceQueue;

    goto :goto_3

    .line 12
    :cond_3
    new-instance p2, Lcom/shabakaty/downloader/pg7;

    .line 13
    invoke-direct {p2, p1, v1}, Lcom/shabakaty/downloader/pg7;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/x06;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    new-instance p2, Ljava/util/Vector;

    .line 15
    invoke-direct {p2, v0}, Ljava/util/Vector;-><init>(I)V

    iget-object v0, p0, Lcom/shabakaty/downloader/x06;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/shabakaty/downloader/pg7;

    iget-object v2, p0, Lcom/shabakaty/downloader/x06;->c:Ljava/lang/ref/ReferenceQueue;

    .line 16
    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/pg7;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p2, p1

    :goto_4
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
