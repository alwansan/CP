.class public abstract Lcom/shabakaty/downloader/zy6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"


# static fields
.field public static final a:Lcom/shabakaty/downloader/zy6;

.field public static final b:Lcom/shabakaty/downloader/zy6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ry6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ry6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/zy6;->a:Lcom/shabakaty/downloader/zy6;

    new-instance v0, Lcom/shabakaty/downloader/vy6;

    invoke-direct {v0}, Lcom/shabakaty/downloader/vy6;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/zy6;->b:Lcom/shabakaty/downloader/zy6;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
