.class public Lcom/shabakaty/downloader/yv3$a;
.super Lcom/shabakaty/downloader/v32$c;
.source "RxRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/yv3;->a(Lcom/shabakaty/downloader/y43;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/shabakaty/downloader/y43;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yv3;[Ljava/lang/String;Lcom/shabakaty/downloader/y43;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/shabakaty/downloader/yv3$a;->b:Lcom/shabakaty/downloader/y43;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/v32$c;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/yv3$a;->b:Lcom/shabakaty/downloader/y43;

    sget-object v0, Lcom/shabakaty/downloader/bw3;->a:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/v43$a;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/v43$a;->b(Ljava/lang/Object;)V

    return-void
.end method
