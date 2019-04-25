<?php $this->theme->header(); ?>

    <main>
        <div class="container">
            <div class="row">
                <div class="col post-title">
                    <h3>Edit post - <?=$post->title?></h3>
                </div>
            </div>
            <div class="row">
                <div class="col-9">
                    <form id="formPost">
                    <input type="hidden" name="post_id" id="formPostId" value="<?=$post->id?>" />
                        <div class="form-group">
                        <label for="formTitle">Title</label>
                            <input 
                              type="text"
                              name="title" 
                              class="form-control" id="formTitle" placeholder="Title post..." value="<?=$post->title?>">
                        </div>
                        <div class="form-group">
                            <label for="formContent">Content</label>
                            <textarea name="content" id="redactor" class="form-control" id="formContent"><?=$post->content?></textarea>
                        </div>
                    </form>
                </div>
                <div class="col-3">
                    <div>
                        <p>Update this post</p>
                        <button type="submit" class="btn btn-primary" onclick="post.update()">
                            Update
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </main>

<?php $this->theme->footer(); ?>
