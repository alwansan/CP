.class public Lzendesk/messaging/ui/InputBoxAttachmentClickListener;
.super Ljava/lang/Object;
.source "InputBoxAttachmentClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final activity:Lcom/shabakaty/downloader/r9;

.field public final belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

.field public final imageStream:Lzendesk/belvedere/c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r9;Lzendesk/belvedere/c;Lzendesk/messaging/BelvedereMediaHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;->activity:Lcom/shabakaty/downloader/r9;

    .line 3
    iput-object p2, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;->imageStream:Lzendesk/belvedere/c;

    .line 4
    iput-object p3, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;->imageStream:Lzendesk/belvedere/c;

    invoke-virtual {p1}, Lzendesk/belvedere/c;->a2()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;->showImagePicker()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;->imageStream:Lzendesk/belvedere/c;

    invoke-virtual {p1}, Lzendesk/belvedere/c;->Y1()V

    :goto_0
    return-void
.end method

.method public showImagePicker()V
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;->activity:Lcom/shabakaty/downloader/r9;

    .line 2
    new-instance v1, Lzendesk/belvedere/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lzendesk/belvedere/a$b;-><init>(Landroid/content/Context;Lzendesk/belvedere/a$a;)V

    .line 3
    invoke-virtual {v1}, Lzendesk/belvedere/a$b;->b()Lzendesk/belvedere/a$b;

    const-string v0, "*/*"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v0, v2}, Lzendesk/belvedere/a$b;->c(Ljava/lang/String;Z)Lzendesk/belvedere/a$b;

    iget-object v0, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;->belvedereMediaHolder:Lzendesk/messaging/BelvedereMediaHolder;

    .line 5
    invoke-virtual {v0}, Lzendesk/messaging/BelvedereMediaHolder;->getSelectedMedia()Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v1, Lzendesk/belvedere/a$b;->c:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 7
    sget v3, Lzendesk/messaging/R$id;->input_box_attachments_indicator:I

    const/4 v4, 0x0

    aput v3, v0, v4

    sget v3, Lzendesk/messaging/R$id;->input_box_send_btn:I

    aput v3, v0, v2

    .line 8
    invoke-virtual {v1, v0}, Lzendesk/belvedere/a$b;->d([I)Lzendesk/belvedere/a$b;

    .line 9
    iput-boolean v2, v1, Lzendesk/belvedere/a$b;->g:Z

    .line 10
    iget-object v0, p0, Lzendesk/messaging/ui/InputBoxAttachmentClickListener;->activity:Lcom/shabakaty/downloader/r9;

    .line 11
    invoke-virtual {v1, v0}, Lzendesk/belvedere/a$b;->a(Lcom/shabakaty/downloader/r9;)V

    return-void
.end method
