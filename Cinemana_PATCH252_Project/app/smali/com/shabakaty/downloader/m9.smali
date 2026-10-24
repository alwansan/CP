.class public final Lcom/shabakaty/downloader/m9;
.super Ljava/lang/Object;
.source "AppBarConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/m9$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/w73;

.field public final c:Lcom/shabakaty/downloader/m9$b;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/shabakaty/downloader/w73;Lcom/shabakaty/downloader/m9$b;Lcom/shabakaty/downloader/m9$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/m9;->a:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/m9;->b:Lcom/shabakaty/downloader/w73;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/m9;->c:Lcom/shabakaty/downloader/m9$b;

    return-void
.end method
