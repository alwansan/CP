.class public final Lcom/shabakaty/cinemana/ca1/Ui7$SeasonVm;
.super Ljava/lang/Object;
.source "Ui7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Ui7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeasonVm"
.end annotation


# instance fields
.field public final v:Lcom/shabakaty/cinemana/ca1/Ui7$CachedSeason;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/shabakaty/cinemana/ca1/Ui7$CachedSeason;

    invoke-direct {v0, p1}, Lcom/shabakaty/cinemana/ca1/Ui7$CachedSeason;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonVm;->v:Lcom/shabakaty/cinemana/ca1/Ui7$CachedSeason;

    return-void
.end method
