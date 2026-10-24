.class public Lcom/shabakaty/downloader/k60$a;
.super Ljava/lang/Object;
.source "CombinedMiddleware.java"

# interfaces
.implements Lcom/shabakaty/downloader/vd0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/k60;->a(Lcom/shabakaty/downloader/i2;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;Lcom/shabakaty/downloader/vd0;Ljava/util/Iterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/zp1;

.field public final synthetic b:Lcom/shabakaty/downloader/eu0;

.field public final synthetic c:Lcom/shabakaty/downloader/vd0;

.field public final synthetic d:Ljava/util/Iterator;

.field public final synthetic e:Lcom/shabakaty/downloader/k60;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k60;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;Lcom/shabakaty/downloader/vd0;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/k60$a;->e:Lcom/shabakaty/downloader/k60;

    iput-object p2, p0, Lcom/shabakaty/downloader/k60$a;->a:Lcom/shabakaty/downloader/zp1;

    iput-object p3, p0, Lcom/shabakaty/downloader/k60$a;->b:Lcom/shabakaty/downloader/eu0;

    iput-object p4, p0, Lcom/shabakaty/downloader/k60$a;->c:Lcom/shabakaty/downloader/vd0;

    iput-object p5, p0, Lcom/shabakaty/downloader/k60$a;->d:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/i2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/i2<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k60$a;->e:Lcom/shabakaty/downloader/k60;

    iget-object v2, p0, Lcom/shabakaty/downloader/k60$a;->a:Lcom/shabakaty/downloader/zp1;

    iget-object v3, p0, Lcom/shabakaty/downloader/k60$a;->b:Lcom/shabakaty/downloader/eu0;

    iget-object v4, p0, Lcom/shabakaty/downloader/k60$a;->c:Lcom/shabakaty/downloader/vd0;

    iget-object v5, p0, Lcom/shabakaty/downloader/k60$a;->d:Ljava/util/Iterator;

    move-object v1, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/k60;->a(Lcom/shabakaty/downloader/i2;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;Lcom/shabakaty/downloader/vd0;Ljava/util/Iterator;)V

    return-void
.end method
